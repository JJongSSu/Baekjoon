def solution(price, money, count):
    if(money>=sum(range(count+1))*price):
        return 0
    return sum(range(count+1))*price - money