import tensorflow as tf
from tensorflow import keras
from tensorflow.keras import layers
import numpy as np

X = np.load("input_X.npy")
Y = np.load("input_Y.npy")

model = keras.Sequential(
    [
        layers.Dense(32, activation="relu", name="layer1"),
        layers.Dense(64, activation="relu", name="layer2"),
        layers.Dense(128, activation="relu", name="layer3"),
        layers.Dense(600, activation="softmax", name="layer4"),
    ]
)

model.compile(optimizer='adam',
              loss='categorical_crossentropy',
              metrics=['accuracy'])

model.fit(X, Y, epochs=1000)

print(model.predict(X[3:5]))

model.save('saved_s_keras_model')
