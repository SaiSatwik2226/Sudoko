import random

a = [[0]*9]*9
b = a

def subarray(i,j,a):
    x = i//3
    y = j//3
    sa = []
    for m in [x,(x+1),(x+2)]:
        for n in [y,(y+1),(y+2)]:
            sa.append(a[m][n])

    return sa


for i,j in enumerate(a):
    for m,n in enumerate(j):
        r = random.randint(1,9)
        s = subarray(i,m,a)
        while True:
            if n == 0:
                if r not in j:
                    if r not in b[i]:
                        if r not in s:
                            a[i][m] = r
                            b[m][i]=r
                            break
                        else:
                            r = random.randint(1,9)
                    else:
                        r = random.randint(1,9)
                else:
                    r = random.randint(1,9)
            else:
                break

        print(a)

for i in a:
    print(i)
