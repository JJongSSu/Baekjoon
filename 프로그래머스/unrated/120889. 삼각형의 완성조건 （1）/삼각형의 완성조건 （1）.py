def solution(sides):
    answer = 0
    if((sum(sides) - max(sides))>max(sides)):
        answer = 1
    else:
        answer = 2
    return answer