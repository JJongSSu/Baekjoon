-- 코드를 입력하세요
select 
    distinct CAR_ID, 
    case when car_id in (select car_id from CAR_RENTAL_COMPANY_RENTAL_HISTORY
                         where '2022-10-16' between START_DATE and END_DATE
                         group by car_id) then '대여중'
    else '대여 가능'
    end as AVAILABILITY
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
order by CAR_ID DESC