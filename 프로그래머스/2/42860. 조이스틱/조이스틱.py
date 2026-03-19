def solution(name):
    answer = 0
    min_horizontal_move = len(name) - 1
    alphabet_count = ord('Z') - ord('A') + 1
    
    for i in range(len(name)):
        corr_updown_move = ord(name[i]) - ord('A')
        min_updown_move = min(corr_updown_move, alphabet_count - corr_updown_move)
        answer += min_updown_move
        
        next_a_index = i+1
        while next_a_index < len(name) and name[next_a_index] == 'A':
            next_a_index += 1
        
        back_move = len(name) - next_a_index
        min_horizontal_move = min(min_horizontal_move, i*2 + back_move)
        min_horizontal_move = min(min_horizontal_move, i + back_move*2)
    return answer + min_horizontal_move