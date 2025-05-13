-- 코드를 입력하세요
with rank_food as (SELECT *, ROW_NUMBER() over (partition by CATEGORY order by CATEGORY, PRICE DESC) as rn from FOOD_PRODUCT
where CATEGORY in ('과자', '국', '김치', '식용유'))

select CATEGORY, (PRICE) MAX_PRICE, PRODUCT_NAME from rank_food
where rn = 1
order by MAX_PRICE DESC
