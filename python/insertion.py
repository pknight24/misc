def insertion(l):
    j = 1
    while ( j < len(l)):
        i = 0
        while (l[j] > l[i]):
            i = i + 1
        m = l[j]
        for k in range(j - i - 1):
            l[j-k] = l[j-k-1]
        l[i] = m
        j = j + 1
    return l

L = [6,5,4,3,2,1]

print (L)

print (insertion(L))




