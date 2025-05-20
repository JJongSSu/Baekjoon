-- 코드를 입력하세요
with rental_history as (
    select 
        c.CAR_TYPE,
        h.HISTORY_ID, 
        c.DAILY_FEE, 
        (DATEDIFF(h.end_date, h.start_date) + 1) RENTAL_DATE, 
        case 
        when (DATEDIFF(h.end_date, h.start_date) + 1) >= 90 then '90일 이상'
        when (DATEDIFF(h.end_date, h.start_date) + 1) >= 30 then '30일 이상'
        when (DATEDIFF(h.end_date, h.start_date) + 1) >= 7 then '7일 이상'
        else null
        end as DURATION_TYPE
    from CAR_RENTAL_COMPANY_RENTAL_HISTORY h
    left join CAR_RENTAL_COMPANY_CAR c using(CAR_ID) 
    where c.CAR_TYPE = '트럭' 
    order by h.HISTORY_ID DESC
)

select 
    HISTORY_ID, 
    floor((DAILY_FEE * (100 - ifnull(discount_rate, 0)) / 100) * RENTAL_DATE) FEE
from rental_history h
left join CAR_RENTAL_COMPANY_DISCOUNT_PLAN p using(CAR_TYPE, DURATION_TYPE)
order by FEE DESC, HISTORY_ID DESC