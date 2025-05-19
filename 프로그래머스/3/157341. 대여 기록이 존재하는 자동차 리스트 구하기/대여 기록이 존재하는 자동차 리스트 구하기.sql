-- 코드를 입력하세요
SELECT distinct CAR_ID from CAR_RENTAL_COMPANY_CAR c
left join CAR_RENTAL_COMPANY_RENTAL_HISTORY h using(CAR_ID)
where c.CAR_TYPE = '세단' and MONTH(h.START_DATE) = '10'
order by CAR_ID DESC