def solution(my_string, num1, num2):
    answer = my_string[num1]
    l = list(my_string)
    l[num1] = my_string[num2]
    l[num2] = answer
    s = "".join(l)
    return s