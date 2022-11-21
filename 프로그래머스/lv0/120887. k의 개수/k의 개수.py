def solution(i, j, k):
    answer = 0
    for a in range(i,j+1):
        if (len(str(a))==1):
            if(str(k)==str(a)):
                answer += 1
            else:
                pass
        else:
            for b in range(len(str(a))):
                if(str(k) == str(a)[b]):
                    answer += 1
                else:
                    pass
    return answer