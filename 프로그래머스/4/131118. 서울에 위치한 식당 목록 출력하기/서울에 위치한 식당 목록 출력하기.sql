-- 코드를 입력하세요
SELECT i.REST_ID, i.REST_NAME, i.FOOD_TYPE, i.FAVORITES, i.ADDRESS, 
    round(avg(r.REVIEW_SCORE),2) as SCORE 
from REST_INFO i
inner join REST_REVIEW r using(REST_ID)
where i.ADDRESS like '서울%'
group by i.REST_ID
order by SCORE DESC, FAVORITES DESC