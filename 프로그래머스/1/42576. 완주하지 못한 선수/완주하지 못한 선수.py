from collections import Counter
def solution(participant, completion):
    answer = ''
    
#     hash_map = {}
#     for name in participant:
#         if name in hash_map:
#             hash_map[name] += 1
#         else:
#             hash_map[name] = 1
    
#     for name in completion:
#         hash_map[name] -= 1
            
#     for name, count in hash_map.items():
#         if count != 0 :
#             answer = name

    p_dict = Counter(participant)
    c_dict = Counter(completion)

    answer = list(p_dict - c_dict)[0]
    return answer