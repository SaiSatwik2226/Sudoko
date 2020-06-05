import random

c = []
b = []

for i in range(9):
    c.append([0 for i in range(0,9)])
    b.append([0 for i in range(0,9)])

n=0

for i in range(9):
    for j in range(9):
        #s = subarray(i,j,c)
        while n!=1:
            t = 0
            t = random.randint(1,9)
            if c[i][j] == 0 and t not in [c[i][k] for k in range(9)] and t not in [c[k][j] for k in range(9)]:
                c[i][j] = t
                n = 1
        n = 0
    print("c",[c[i][k] for k in range(9)])




for d in c:
    print(d)

#for d in b:
#    print(d)
