-- 코드를 작성해주세요
select distinct ID, EMAIL, FIRST_NAME, LAST_NAME from DEVELOPERS d
left join SKILLCODES s on(s.CODE & d.SKILL_CODE > 0)
where NAME regexp 'Python|C#'
order by ID