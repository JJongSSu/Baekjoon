def solution(s):
    s = s.lower()
    a = s.count('p')
    b = s.count('y')
    if(a==0 and b==0):
        return True
    elif(a==b):
        return True
    else:
        return False