-- 코드를 작성해주세요
select DEPT_ID, DEPT_NAME_EN, round(avg(SAL)) AVG_SAL from HR_EMPLOYEES e
left join HR_DEPARTMENT d using(DEPT_ID)
group by DEPT_ID
order by AVG_SAL DESC