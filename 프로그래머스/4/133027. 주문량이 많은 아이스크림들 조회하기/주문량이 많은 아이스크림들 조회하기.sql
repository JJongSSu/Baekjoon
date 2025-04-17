-- 코드를 입력하세요
select FLAVOR from (select FLAVOR, (TOTAL_ORDER + july_total) total from FIRST_HALF f
left join (SELECT FLAVOR, sum(TOTAL_ORDER) july_total from JULY group by FLAVOR) j using(FLAVOR)) t
order by total DESC
limit 3