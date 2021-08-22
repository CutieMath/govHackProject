import csv
import numpy as np
import pickle

csv_file = csv.reader(open("core_competencies.csv", "r"))

skill_index = {}
job_index = {}
index_job = {}
data = {}
z = 0
x = 0
for i, item in enumerate(csv_file):
    if i == 0:
        continue
    job = item[0]
    skill = item[2]
    skill_level = item[3]
    if skill not in skill_index:
        skill_index[skill] = z
        z += 1
    if job not in job_index:
        job_index[job] = x
        index_job[x] = job
        x += 1
    if job_index[job] not in data:
        data[job_index[job]] = {}
    data[job_index[job]][skill_index[skill]] = skill_level

n = len(data)
Y_size = len(job_index)
f_size = len(skill_index)
print(Y_size)
print(f_size)
X = np.zeros((n, f_size))
Y = np.zeros((n,600))
for i, (key, value) in enumerate(data.items()):
    Y[i][key] = 1
    for key2, value2 in value.items():
        X[i][key2] = value2

pickle.dump(index_job, open("job_id", "wb"))
pickle.dump(job_index, open("job_index", "wb"))
np.save("input_X", X)
np.save("input_Y", Y)
