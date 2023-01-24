def solution(s):
    a = ''
    s = s.lower()
    s = s.split(" ")
    for i in s:
        if(i==""):
            a = a + " "
        else:
            i = i.replace(i[0],i[0].upper(),1)
            a = a + " " + i
    return a.lstrip()
    