-- 코드를 작성해주세요
SELECT
        CASE 
        WHEN GROUP_CONCAT(s.NAME) LIKE ("%Python%") AND GROUP_CONCAT(s.CATEGORY) LIKE("%Front%") THEN "A"
        WHEN GROUP_CONCAT(s.NAME) LIKE ("%C#%") THEN "B"
        WHEN GROUP_CONCAT(s.CATEGORY) LIKE ("%Front%") THEN "C"
        END AS GRADE,
        d.ID,
        d.EMAIL
FROM DEVELOPERS  AS d
JOIN SKILLCODES AS s
ON (d.SKILL_CODE & s.CODE)
GROUP BY ID, EMAIL 
HAVING GRADE IS NOT NULL
ORDER BY GRADE ASC, ID ASC


# with SUM_CTE as (
#     select 
#     (select sum(CODE) from SKILLCODES where CATEGORY = 'Front End') FRONT_END,
#     (select CODE from SKILLCODES where NAME = 'Python') PYTHON,
#     (select CODE from SKILLCODES where NAME = 'C#') C_SHARP
# ),
# DEVELOPERS_SKILL as (select 
#     case
#     when SKILL_CODE & FRONT_END and SKILL_CODE & PYTHON then 'A'
#     when SKILL_CODE & C_SHARP then 'B'
#     when SKILL_CODE & FRONT_END then 'C'
#     else null
#     end as GRADE,
#     ID,
#     EMAIL
# from DEVELOPERS, SUM_CTE)

# select * from DEVELOPERS_SKILL
# where GRADE is not null
# order by GRADE, ID