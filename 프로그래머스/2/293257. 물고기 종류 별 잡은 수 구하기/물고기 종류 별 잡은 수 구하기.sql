-- 코드를 작성해주세요
with fishing_count as (select FISH_TYPE, count(FISH_TYPE) FISH_COUNT from FISH_INFO
group by FISH_TYPE)

select c.FISH_COUNT, i.FISH_NAME from fishing_count c
left join FISH_NAME_INFO i using(FISH_TYPE)
order by c.FISH_COUNT DESC