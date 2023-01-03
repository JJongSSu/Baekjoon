def solution(absolutes, signs):
    # answer=[]
    # for i in range(len(signs)):
    #     if(signs[i]==True):
    #         answer.append(absolutes[i])
    #     else:
    #         answer.append(-absolutes[i])
    # return sum(answer)
    return sum(absolutes if sign else -absolutes for absolutes, sign in zip(absolutes, signs))