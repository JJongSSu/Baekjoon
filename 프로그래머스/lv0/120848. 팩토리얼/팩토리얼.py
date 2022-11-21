def solution(n):
    answer = 1
    a = 0
    for i in range(1,11):
        answer = answer*i
        a = i
        if(n<answer):
            answer = answer/i
            a = i-1
            break
    return a