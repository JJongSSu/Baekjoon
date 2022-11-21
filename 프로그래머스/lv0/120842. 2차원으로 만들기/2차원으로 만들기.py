import numpy as np
def solution(num_list, n):
    answer = np.array(num_list)
    answer = answer.reshape(int(len(num_list)/n),n)
    b = answer.tolist()
    return b