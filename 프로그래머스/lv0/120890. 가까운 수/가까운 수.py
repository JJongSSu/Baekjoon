import numpy as np
def solution(array, n):
    min_num = 50
    a = 0
    for i in array:
        abs_num = abs(n-i)
        if min_num > abs_num:
            min_num = abs_num
            a = i
        elif min_num==abs_num:
            if(i<a):
                a = i
        else:
            pass
    return a