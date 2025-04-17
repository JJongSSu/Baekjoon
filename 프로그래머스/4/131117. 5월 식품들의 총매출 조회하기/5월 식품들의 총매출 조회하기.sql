-- 코드를 입력하세요
select PRODUCT_ID, PRODUCT_NAME, (total_amount * PRICE) total_price from (select PRODUCT_ID, sum(AMOUNT) total_amount from FOOD_ORDER
where PRODUCE_DATE like '2022-05%'
group by PRODUCT_ID) order_total
left join FOOD_PRODUCT using(PRODUCT_ID)
order by total_price DESC, PRODUCT_ID