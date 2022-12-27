def solution(x):
    a = list(map(int,str(x)))
    if(x%(sum(a))==0):
        return True
    else:
        return False