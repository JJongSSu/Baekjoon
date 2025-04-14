-- 코드를 입력하세요
SELECT FLAVOR from FIRST_HALF as f left outer join ICECREAM_INFO as i using(FLAVOR)
where TOTAL_ORDER > 3000 and i.INGREDIENT_TYPE like "fruit_based"
order by TOTAL_ORDER DESC