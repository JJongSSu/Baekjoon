def solution(left, right):
    # 제곱수는 약수의 개수가 홀수
    answer=0
    for i in range(left,right+1):
        if int(i**(0.5))==i**(0.5):
            answer-=i
        else:
            answer+=i
    return answer

    # c=[]
    # for i in range(left, right+1):
    #     b=[]
    #     for j in range(1,i+1):
    #         if(i%j==0):
    #             b.append(j)
    #         else:
    #             pass
    #     if(len(b)%2==0):
    #         c.append(True)
    #     else:
    #         c.append(False)
    # return sum(a if c else -a for a, c in zip(a,c)) 