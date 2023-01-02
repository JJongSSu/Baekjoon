def solution(arr):
    if(len(arr)==1):
        arr.remove(arr[0])
        arr.append(-1)
        return arr
    arr.remove(min(arr))
    return arr