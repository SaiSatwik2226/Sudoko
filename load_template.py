a = [[5,1,7,9,3,6,2,4,8],[9,6,2,1,8,4,5,3,7],[3,8,4,5,7,2,6,1,9],[6,9,8,4,5,7,3,2,1],[4,2,1,3,6,9,8,7,5],[7,5,3,8,2,1,4,9,6],[8,3,9,7,4,5,1,6,2],[1,4,6,2,9,8,7,5,3],[2,7,5,6,1,3,9,8,4]]

import random


print(":LEVELS:")
print("1.Beginner")
print("2.Easy")
print("3.Medium")
print("4.Hard")

l = input("Level Number:")

if(l == '1'):
    for i in range(23):
        r1 = random.randint(0,8)
        r2 = random.randint(0,8)
        a[r1][r2] = 0


elif(l == '2'):
    for i in range(36):
        r1 = random.randint(0,8)
        r2 = random.randint(0,8)
        a[r1][r2] = 0


elif(l == '3'):
    for i in range(45):
        r1 = random.randint(0,8)
        r2 = random.randint(0,8)
        a[r1][r2] = 0


elif(l == '4'):
    for i in range(53):
        r1 = random.randint(0,8)
        r2 = random.randint(0,8)
        a[r1][r2] = 0


for k,i in enumerate(a):
    print('|'.join(i))
    if(k!=0 or k!=8):
        print('------------------')
