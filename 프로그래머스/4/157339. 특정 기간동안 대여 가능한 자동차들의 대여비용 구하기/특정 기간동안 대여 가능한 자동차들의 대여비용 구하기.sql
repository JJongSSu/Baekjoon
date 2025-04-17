-- 코드를 입력하세요
select CAR_ID, CAR_TYPE, CAST(DAILY_FEE * (100 - DISCOUNT_RATE) * 30 / 100 as SIGNED) FEE 
from CAR_RENTAL_COMPANY_CAR c
left join CAR_RENTAL_COMPANY_DISCOUNT_PLAN p using(CAR_TYPE)
where not exists (
    select 1 from CAR_RENTAL_COMPANY_RENTAL_HISTORY h
    where c.CAR_ID = h.CAR_ID
    and h.END_DATE >= '2022-11-01'
    and h.START_DATE <= '2022-11-30'
)
and (CAR_TYPE = '세단' or CAR_TYPE = 'SUV')
and duration_type = '30일 이상'
and (DAILY_FEE * (100 - DISCOUNT_RATE) * 30 / 100) >= 500000
and (DAILY_FEE * (100 - DISCOUNT_RATE) * 30 / 100) < 2000000
order by FEE DESC, CAR_TYPE, CAR_ID DESC