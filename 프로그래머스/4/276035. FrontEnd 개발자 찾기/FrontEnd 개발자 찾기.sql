-- 코드를 작성해주세요
with t as (
    select sum(CODE) as sum_code from SKILLCODES 
    where CATEGORY = 'Front End')

select ID, EMAIL, FIRST_NAME, LAST_NAME from DEVELOPERS d
inner join t 
on d.SKILL_CODE & t.sum_code > 0
order by ID
