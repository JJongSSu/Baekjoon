def solution(array):
    answer = 0
    for i in array:
        for j in range(len(str(i))):
            if(str(i)[j]=='7'):
                answer += 1
            else :
                pass
    return answer