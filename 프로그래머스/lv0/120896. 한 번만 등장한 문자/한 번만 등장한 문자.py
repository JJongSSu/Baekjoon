import re
def solution(s):
    answer = ''
    a=''
    for i in s:
        if i not in answer:
            answer = answer + i
        else:
            if i not in a:
                a = a + i           
    if(a==''):
        return ''.join(sorted(s))
    else:
    #     k = re.compile("[abc]+".format(a))
        k = re.compile("[{}]+".format(a))
        k = k.sub("", s)
        return ''.join(sorted(k))