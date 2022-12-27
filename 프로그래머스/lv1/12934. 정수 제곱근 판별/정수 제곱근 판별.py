def solution(n):
    answer = 0
    if(n**(1/2) in range(1,int(50000000000000**(1/2)))):
        answer = ((n**(1/2))+1)**2
    else:
        answer = -1
    return answer