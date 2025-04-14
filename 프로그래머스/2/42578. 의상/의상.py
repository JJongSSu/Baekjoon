# import pandas as pd
from collections import Counter
from functools import reduce

def solution(clothes):
    answer = 0
    
#     df_clothes = pd.DataFrame(clothes, columns = ['Name', 'Clothes'])
#     df_count = df_clothes['Clothes'].value_counts().to_frame()

#     if(len(df_count) == 1):
#         answer = int(df_count['count'].iloc[0])
#     else:
#         df_squared = df_count.applymap(lambda x: x+1)
#         answer = int(df_squared.prod().iloc[0]) - 1

    clothes_count = Counter([kind for name, kind in clothes])
    answer = reduce(lambda x, y: x*(y+1), clothes_count.values(), 1) - 1
        
    return answer