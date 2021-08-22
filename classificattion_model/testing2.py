import tensorflow as tf
import tensorflow.keras as keras
import tensorflow.keras.layers as layers
import numpy as np
import os
import pickle


model = tf.keras.models.load_model("saved_s_keras_model")

optimizer = keras.optimizers.Adam(1e-4)


a_test_case = np.zeros((1, 10))
a_test_case[0][0] = 3
a_test_case[0][1] = 4
a_test_case[0][2] = 2
a_test_case[0][3] = 1
a_test_case[0][4] = 8
a_test_case[0][5] = 9
a_test_case[0][6] = 4
a_test_case[0][7] = 3
a_test_case[0][8] = 2
a_test_case[0][9] = 7

prediction = model(a_test_case).numpy()

# job = np.argsort(prediction)
# prob = np.sort(prediction)
# print(prob[0][-3:])
# print(job[0][-3:])
index_job = pickle.load(open("job_id", "rb"))
# for item in job[0][-3:]:
#     print(index_job[item])

task_p = np.load("task_p.npy")
id_tasks = pickle.load(open("id_tasks", "rb"))
result = np.matmul(prediction, task_p)

good_tasks = np.argsort(result[0])[-10:]
good_tasks_p = np.sort(result[0])[-10:]

for i, item in enumerate(good_tasks):
    print(id_tasks[item], " : ", good_tasks_p[i])
