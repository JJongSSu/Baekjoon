import math

def solution(progresses, speeds):
    # 몇 일 걸리는지 계산
    remaining_days = []
    for progress, speed in zip(progresses, speeds):
        remaining_days.append(math.ceil((100 - progress) / speed))
        
    # 다음 숫자보다 작으면 포함, 크면 다음 숫자로 넘어감
    answer = []
    while remaining_days:
        deploy_count = 0
        first_deploy = remaining_days[0]
        while remaining_days and remaining_days[0] <= first_deploy:
            remaining_days.pop(0)
            deploy_count += 1
        
        answer.append(deploy_count)

    return answer