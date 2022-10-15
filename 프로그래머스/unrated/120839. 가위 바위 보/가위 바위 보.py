def solution(rsp):
    answer = ''
    for i in rsp:
        if(i==str(2)):
            answer = answer + "0"
        elif(i==str(0)):
            answer = answer + "5"
        else:
            answer = answer + "2"
    return answer