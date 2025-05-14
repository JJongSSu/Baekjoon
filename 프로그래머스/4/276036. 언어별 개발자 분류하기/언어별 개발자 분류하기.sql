-- 코드를 작성해주세요
with DEVELOPERS_SKILL as (select 
    case
    when SKILL_CODE & (select sum(CODE) from SKILLCODES where CATEGORY = 'Front End') and SKILL_CODE & (select CODE from SKILLCODES where NAME = 'Python') then 'A'
    when SKILL_CODE & (select CODE from SKILLCODES where NAME = 'C#') then 'B'
    when SKILL_CODE & (select sum(CODE) from SKILLCODES where CATEGORY = 'Front End') then 'C'
    else null
    end as GRADE,
    ID,
    EMAIL
from DEVELOPERS)

select * from DEVELOPERS_SKILL
where GRADE is not null
order by GRADE, ID