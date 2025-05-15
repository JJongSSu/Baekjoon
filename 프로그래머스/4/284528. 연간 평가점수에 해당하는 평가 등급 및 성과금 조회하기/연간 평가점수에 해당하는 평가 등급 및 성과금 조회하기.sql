-- 코드를 작성해주세요
select 
    EMP_NO, 
    EMP_NAME, 
    case
    when avg(SCORE) >= 96 then 'S'
    when avg(SCORE) >= 90 then 'A'
    when avg(SCORE) >= 80 then 'B'
    else 'C'
    end as GRADE,
    case
    when avg(SCORE) >= 96 then SAL * 0.2
    when avg(SCORE) >= 90 then SAL * 0.15
    when avg(SCORE) >= 80 then SAL * 0.1
    else 0
    end as BONUS
from HR_EMPLOYEES
left join HR_GRADE using(EMP_NO)
group by EMP_NO
order by EMP_NO