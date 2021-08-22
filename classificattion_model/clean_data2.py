import csv
import numpy as np
import pickle

csv_file = csv.reader(open("special_tasks.csv", "r"))

tasks = {}
id_tasks = {}
job_index = pickle.load(open("job_index", "rb"))
index_job = pickle.load(open("job_id", "rb"))
data = {}
z = 0
x = 0
for i, item in enumerate(csv_file):
    if i == 0:
        continue
    job = item[0]
    task = item[2]
    percentage = item[3]
    if task not in tasks:
        tasks[task] = z
        id_tasks[z] = task
        z += 1
    if job_index[job] not in data:
        data[job_index[job]] = {}
    data[job_index[job]][tasks[task]] = float(percentage[:-1]) / 100

pickle.dump(id_tasks, open("id_tasks", "wb"))

task_p = np.zeros((600, len(tasks)))

for i, (key, value) in enumerate(data.items()):
    for j in value:
        task_p[i][j] = value[j]

np.save("task_p", task_p)
