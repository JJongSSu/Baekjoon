def solution(my_string):
    moum = ['a','e','i','o','u']
    answer = ''
    for i in my_string:
        if (i in moum):
            my_string = my_string.replace(i,"")
    answer = my_string
    return answer