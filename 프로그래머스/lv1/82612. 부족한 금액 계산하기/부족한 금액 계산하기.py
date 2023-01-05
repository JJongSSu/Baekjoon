def solution(price, money, count):
    return max(0,sum(range(count+1))*price - money)

# max(0,price*(count+1)*count//2-money)