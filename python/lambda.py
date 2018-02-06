def getF():
    return lambda x: x + 1

f = getF()
print (f(2))

def plug2(f):
    return f(2)

print (plug2(lambda x: x + 2))
