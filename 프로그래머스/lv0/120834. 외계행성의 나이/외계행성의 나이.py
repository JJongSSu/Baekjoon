def solution(age):
    answer=''
    dic = {0:'a',1:'b',2:'c',3:'d',4:'e',5:'f',6:'g',7:'h',8:'i',9:'j'}
    for i in range(len(str(age))):
        answer = answer + dic[int(str(age)[i])]
    return answer