def solution(ingredient):
    # re.findall('(1231)+',''.join(list(map(str,ingredient))))
    # a = 0
    # b = ''.join(list(map(str,ingredient)))
    # while True:
    #     if(b.find('1231')!=-1):
    #         b = b.replace('1231', '', 1)
    #         a += 1
    #     else:
    #         break
    # return a
    a = []
    b = 0
    for i in ingredient:
        a.append(i)
        if(a[-4:]==[1,2,3,1]):
            b += 1
            for i in range(4):
                a.pop()
    return b