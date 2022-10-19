def solution(n):
    answer = 0
    for i in range(1,n+1):
            if((int(n/i)*i)==n):
                answer += 1
            else:
                pass
    return answer