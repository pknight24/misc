#for various small functions that I am playing around with
import time
import random
#eat some dick bro
def fib_seq(x):
    if x ==1 or x ==0:
        return 1
    else:
        num = fib_seq(x-1) + fib_seq(x - 2)
        return num


def fact(x):
    if x>0:
        return x * fact(x-1)
    else:
        return 1


def in_sum(n):
    if n> 0:
        num = (2**n) + in_sum(n-1)
        print (num)
        return num
    else:
        return 0
def ninetyninebottles(n):
    strn = str(n)
    phrase = strn + ' bottles of ass on the wall, ' + strn + ' bottles of beer.Take one down, pass it around, ' + str(n-1) + ' bottles of beer on the wall.'
    if n > 2:
        print (phrase)
        print()
        time.sleep(0.3)
        ninetyninebottles(n-1)
    elif n == 2:
        print(phrase)
        print()
        time.sleep(0.3)
        ninetyninebottles(n-1)
    elif n == 1:
        print (n, 'bottle of beer on the wall,', n, 'bottle of beer.Take one down, pass it around, no more bottles of beer on the wall.')

def adds(x):
    if x > 0:
        return x + adds(x-1)
    else:
        return 0
def swag():
    print ("Cash rules everything around me")

n = int(input("Enter num: "))
print (adds(n))
