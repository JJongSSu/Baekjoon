def solution(n, m):
    answer = []
    a = n
    b = m
    while (m):
        n, m = m, n%m
    answer.append(n)    
    answer.append((a*b)//answer[0])
    return answer