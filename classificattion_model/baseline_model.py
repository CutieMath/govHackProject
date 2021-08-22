import tensorflow as tf
import tensorflow.keras as keras
import tensorflow.keras.layers as layers
import numpy as np
import os


X = np.load("input_X.npy")
Y = np.load("input_Y.npy")


class SimpleClassifier(keras.Model):
    def __init__(self):
        super(SimpleClassifier, self).__init__()

    def build(self, input_shape):
        self.dense1 = layers.Dense(32, activation="relu")
        self.dense2 = layers.Dense(64, activation="relu")
        self.dense3 = layers.Dense(128, activation="relu")
        self.dense4 = layers.Dense(600, activation="softmax")

    def call(self, X):
        x = self.dense1(X)
        x = self.dense2(x)
        x = self.dense3(x)
        x = self.dense4(x)

        return x


# Shuffle data
def shuffle(elements):
    shuffled_indices = np.arange(elements[0].shape[0])
    np.random.shuffle(shuffled_indices)
    for i, item in enumerate(elements):
        item = item[shuffled_indices]
        elements[i] = item
    return elements


def batch_data(elements, b_start, b_end):
    batch_elements = [None for i in range(len(elements))]
    for i, item in enumerate(elements):
        bath_item = item[b_start:b_end]
        batch_elements[i] = bath_item
    return batch_elements


model = SimpleClassifier()

optimizer = keras.optimizers.Adam(1e-4)


def train_loss(y_true, y_pred):
    mce = tf.keras.losses.SparseCategoricalCrossentropy()
    return mce(y_true, y_pred)


# checkpoint_dir = './model_checkpoint/'
# checkpoint_prefix = os.path.join(checkpoint_dir, "ckpt")
# checkpoint = tf.train.Checkpoint(optimizer=optimizer, model=model)


def train_step(X, Y):
    with tf.GradientTape() as model_tape:
        Y_ = model(X)
        nor_loss = train_loss(Y, Y_)
    gradients_of_model = model_tape.gradient(nor_loss, model.trainable_variables)

    optimizer.apply_gradients(zip(gradients_of_model, model.trainable_variables))
    return nor_loss.numpy()


def train(X, Y, batch_size, epochs, display_step):
    input_size = Y.shape[0]
    batch_num = input_size // batch_size + 1
    for epoch in range(epochs):
        X, Y = shuffle([X, Y])
        loss_ep = 0
        length = 0
        for batch_id in range(batch_num):
            b_start = batch_id * batch_size
            b_end = b_start + batch_size
            if b_end > input_size:
                b_end = input_size
            batch_X, batch_Y = batch_data([X, Y], b_start, b_end)
            loss = train_step(batch_X, batch_Y)
            loss_ep = loss_ep + loss
            length = length + 1
        if (epoch + 1) % display_step == 0:
            print("epoch: {} with loss: {}".format(epoch + 1, loss_ep / length))
            # checkpoint.save(file_prefix=checkpoint_prefix)


EPOCHS = 1000
BATCH_SIZE = 32
display_steps = 10
train(X, Y, BATCH_SIZE, EPOCHS, display_steps)
model.save('saved_keras_model')
