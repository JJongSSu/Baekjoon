def solution(numbers):
    answer = sorted(numbers,reverse=True)[0]*sorted(numbers,reverse=True)[1]
    return answer