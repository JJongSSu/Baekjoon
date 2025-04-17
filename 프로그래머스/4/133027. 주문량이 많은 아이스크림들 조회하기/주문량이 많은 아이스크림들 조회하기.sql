-- 코드를 입력하세요
select FLAVOR from FIRST_HALF f
left join (SELECT FLAVOR, sum(TOTAL_ORDER) july_total from JULY group by FLAVOR) j using(FLAVOR)
order by (TOTAL_ORDER + july_total) DESC
limit 3