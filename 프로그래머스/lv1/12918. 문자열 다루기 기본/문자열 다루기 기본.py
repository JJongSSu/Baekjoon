import re
def solution(s):
    # a = re.compile('[0-9]+')
    # b = a.match(s)
    # if (b!=None and (len(s)==4 or len(s)==6)):
    #     return True
    # else:
    #     return False
    if (s.isdigit() and (len(s)==4 or len(s)==6)):
        return True
    else:
        return False