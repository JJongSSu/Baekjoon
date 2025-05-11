-- 코드를 작성해주세요
select 
    ROUTE, 
    concat(convert(round(sum(D_BETWEEN_DIST), 1), CHAR), 'km') TOTAL_DISTANCE, 
    concat(convert(round(avg(D_BETWEEN_DIST), 2), CHAR), 'km') AVERAGE_DISTANCE 
from SUBWAY_DISTANCE
group by ROUTE
order by round(sum(D_BETWEEN_DIST), 1) DESC