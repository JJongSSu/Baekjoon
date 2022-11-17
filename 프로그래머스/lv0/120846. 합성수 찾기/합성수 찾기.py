def solution(n):
    # 1~3은 필요 없음
    answer = 0
    if(n==1 or n==2 or n==3):
        answer = 0
    else:
        for i in range(4, n+1):
            for j in range(2,i):
                if i%j==0:
                    answer += 1
                    break
    return answer