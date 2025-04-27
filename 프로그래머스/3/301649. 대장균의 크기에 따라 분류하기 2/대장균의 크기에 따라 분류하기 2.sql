-- 코드를 작성해주세요
select ID, 
case when percent_rank() over(order by SIZE_OF_COLONY DESC) <= 0.25 then 'CRITICAL'
when 0.25 < percent_rank() over(order by SIZE_OF_COLONY DESC) and percent_rank() over(order by SIZE_OF_COLONY DESC) <= 0.5 then 'HIGH'
when 0.5 < percent_rank() over(order by SIZE_OF_COLONY DESC) and percent_rank() over(order by SIZE_OF_COLONY DESC) <= 0.75 then 'MEDIUM'
else 'LOW'
end as COLONY_NAME
from ECOLI_DATA
order by ID