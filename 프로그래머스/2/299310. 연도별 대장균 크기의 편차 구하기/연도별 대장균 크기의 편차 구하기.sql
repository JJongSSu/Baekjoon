-- 코드를 작성해주세요
with year_max as (select YEAR(DIFFERENTIATION_DATE) YEAR, max(SIZE_OF_COLONY) max_SIZE_OF_COLONY from ECOLI_DATA group by YEAR)

select 
    YEAR(DIFFERENTIATION_DATE) YEAR, 
    ((select max_SIZE_OF_COLONY from year_max where year_max.YEAR = YEAR(DIFFERENTIATION_DATE)) - SIZE_OF_COLONY) YEAR_DEV, 
    ID 
from ECOLI_DATA
order by YEAR, YEAR_DEV