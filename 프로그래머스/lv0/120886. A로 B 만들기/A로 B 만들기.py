def solution(before, after):
    before = list(before)
    after = list(after)
    answer = 0
    for i in before:
        if i in after:
            answer += 1
            after.remove(i)
        else:
            pass
    if answer == len(before):
        return 1
    else:
        return 0