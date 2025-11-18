import random
def make_mat():
    m = []
    for i in range(8):
        row = []
        for j in range(6):
            row.append(random.randint(-5, 10))
        m.append(row)
    return m
def check_row(row):
    for x in row:
        if x < 0:
            return -1
    return 1
def make_res(m):
    res = []
    for row in m:
        res.append(check_row(row))
    return res
def print_mat(m):
    for row in m:
        print(row)
mat = make_mat()
print("8x6:")
print_mat(mat)
res = make_res(mat)
print("\nрезультат:")
print(res)