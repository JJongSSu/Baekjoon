def solution(order):
    answer = 0
    for i in str(order):
        if(int(i)!=0):
            if(int(i)%3 == 0):
                answer += 1
            else:
                pass
        else:
             pass       
    return answer