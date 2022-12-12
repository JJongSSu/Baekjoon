def solution(bin1, bin2):
    answer = int('0b'+bin1,2) + int('0b'+bin2,2)
    answer = bin(answer)
    return answer[2:]
