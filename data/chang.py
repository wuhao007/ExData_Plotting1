def findX():
    def isLessThanX(y):
        X = 50
        return y < X
    l = 0
    r = 1
    while isLessThanX(r):
        l = r 
        r = r * 2
    while l + 1 < r:
        m = l + (r - l) / 2
        if isLessThanX(m):
            l = m
        else:
            r = m
    if isLessThanX(l):
        return r
    else:
        return l

print findX()

