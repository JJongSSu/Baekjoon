def solution(numbers):
    a=[]
    b=[]
    c=0
    d=0
    for i in numbers:
        if i >= 0:
            a.append(i)
        else :
            b.append(i)
    a.sort(reverse=True)
    if len(a)>=2:
        c = a[0]*a[1]

    b.sort()
    if len(b)>=2:
        d = b[0]*b[1]
    
    if len(a)==1 and len(b)==1:
        return a[0]*b[0]
    
    if c>=d:
        return c
    else :
        return d