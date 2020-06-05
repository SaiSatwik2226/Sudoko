import numpy as np
import random

#l = np.arange(81).resize((9,9))

l =np.array([0 for i in range(81)]).reshape(9,9)
print(l)

flag = 0

for i,j in enumerate(l):
    for m,n in enumerate(j):
        x=(i)//3
        y=(m)//3
        while True:
            if n == 0:
                r = random.randint(1,9)
                sm = l[x*3:(x+1)*3 , y*3:(y+1)*3]
                print(sm)
                for s in j:
                    if s != r:
                        continue
                    else:
                        flag+=1
                        break

                for s in l.transpose()[i]:
                    if s != r:
                        continue
                    else:
                        flag+=1
                        break

                for s in sm:
                    for ss in s:
                        if ss != r:
                            continue
                        else:
                            flag+=1
                            break


                if flag == 0:
                    print("pass")
                    l[i][m] = r
                    break




print(l)
