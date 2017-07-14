#finds the position of a randomly generated cake on an x,y axis

import random
import time
mx = 200
mn = -200
cakeX = random.randint(mn, mx)
cakeY = random.randint(mn, mx)

botX = 0
botY = 0

Ysteps = 0
Xsteps = 0

def prnt():
    print ('Current x:', botX)
    print ('Current y: ', botY)
    print ('===============================')
    time.sleep (0.4)

#finds the value of X with bisection search
def findX(a, b):
    global cakeX
    global botX
    global Xsteps
    eps = 0.05
    high = b
    low = a
    while (abs(botX - cakeX) > eps):
        if (botX > cakeX):
            high = botX
        else:
            low = botX
        Xsteps += 1
        prnt()
        botX = (high + low)/2


def findY():
    global cakeY
    global botY
    global Ysteps
    if (botY != cakeY):
        if (cakeY - botY > 0):
            botY += 1
        else:
            botY -= 1
        Ysteps += 1
        prnt()
        findY()
    else:
        print ()

def intro():
    print ('Hello and Welcome to FindCake 1.0.')
    time.sleep(1)
    print ('A cake has been spawned somewhere on a 400 by 400 plane.')
    time.sleep(1)
    print ('Our bot will find the X and Y values of the cake\'s location with two different algorithms')
    time.sleep(1)
    print ('Placing cake...')
    time.sleep(3)
    print ('Charging bot...')
    time.sleep(5)

intro()
findX(mn, mx)
findY()
print ('Cake coordinates: ', cakeX, ',', cakeY )
print ('Steps taken to find x: ', Xsteps)
print ('Steps taken to find y: ', Ysteps)
perfaster = (Ysteps/Xsteps) * 100.0
print ('Bisection search is ', perfaster, 'percent faster!')
