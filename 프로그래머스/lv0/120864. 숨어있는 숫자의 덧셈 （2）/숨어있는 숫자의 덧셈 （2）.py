import re
def solution(my_string):
    a = re.compile('[0-9]+')
    answer = list(map(int,a.findall(my_string)))
    return sum(answer)