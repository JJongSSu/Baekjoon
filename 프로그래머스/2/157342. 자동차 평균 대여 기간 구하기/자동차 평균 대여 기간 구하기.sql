-- 코드를 입력하세요
select car_id, round(avg(if(datediff(end_date, start_date) = 0, 1, datediff(end_date, start_date)+1)), 1) AVERAGE_DURATION from CAR_RENTAL_COMPANY_RENTAL_HISTORY
group by car_id
having AVERAGE_DURATION >= 7
order by AVERAGE_DURATION DESC, car_id DESC