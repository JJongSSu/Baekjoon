-- 코드를 작성해주세요
select count(*) FISH_COUNT, max(LENGTH) MAX_LENGTH, FISH_TYPE from FISH_INFO
where FISH_TYPE in (select FISH_TYPE from FISH_INFO 
                    group by FISH_TYPE 
                    having avg(ifnull(LENGTH, 10)) >= 33)
group by FISH_TYPE
order by FISH_TYPE