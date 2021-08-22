import tensorflowjs as tfjs
import tensorflow as tf

model = tf.keras.models.load_model("saved_s_keras_model")

tfjs.converters.save_keras_model(model, "saved_keras_model_js")
