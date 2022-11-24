def solution(emergency):
    emer = sorted(emergency, reverse=True)
    dict = {}
    a = []
    for i in range(len(emergency)):
        dict[emer[i]] = i+1
    for i in emergency:
        a.append(dict[i])
    return a