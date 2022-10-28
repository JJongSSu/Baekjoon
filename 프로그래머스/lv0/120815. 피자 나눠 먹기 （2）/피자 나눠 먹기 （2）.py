def solution(n):
    # 6과 n의 최소공배수(단, 6의 약수는 1)
    for i in range(1,(6*n)+1):
        if((i%6==0)&(i%n==0)):
            return i//6
        else:
            pass