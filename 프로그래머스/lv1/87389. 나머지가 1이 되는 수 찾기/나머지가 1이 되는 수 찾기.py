def solution(n):
    #n-1 약수 중 제일 작은수
    for i in range(2,n):
        if((n-1)%i==0):
            return i
        else:
            pass