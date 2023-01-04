def solution(left, right):
    a = list(range(left, right+1))
    c=[]
    for i in a:
        b=[]
        for j in range(1,i+1):
            if(i%j==0):
                b.append(j)
            else:
                pass
        if(len(b)%2==0):
            c.append(True)
        else:
            c.append(False)
    return sum(a if c else -a for a, c in zip(a,c)) 