def solution(nums):
    answer = 0
    nums_half = len(nums) / 2
    set_nums = set(nums)
    answer = min(len(set_nums), nums_half)
    return answer