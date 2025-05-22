def solution(array, commands):
    # answer = []
    # for command in commands:
    #     sorted_array = sorted(array[command[0]-1:command[1]])
    #     answer.append(sorted_array[command[2]-1])
    
    return list(map(lambda x:sorted(array[x[0]-1:x[1]])[x[2]-1], commands))