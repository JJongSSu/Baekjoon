def solution(s):
    a = [i for i in s]
    a.sort(reverse=True)
    return ''.join(a)
