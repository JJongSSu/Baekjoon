-- 코드를 입력하세요
with 
march_online_sales as(SELECT * from ONLINE_SALE where YEAR(SALES_DATE) = '2022' and MONTH(SALES_DATE) = '03'), 
march_offline_sales as(SELECT *, null as USER_ID from OFFLINE_SALE where YEAR(SALES_DATE) = '2022' and MONTH(SALES_DATE) = '03')


SELECT DATE_FORMAT(SALES_DATE, '%Y-%m-%d') SALES_DATE, PRODUCT_ID, USER_ID, SALES_AMOUNT from march_online_sales
union all
SELECT DATE_FORMAT(SALES_DATE, '%Y-%m-%d') SALES_DATE, PRODUCT_ID, USER_ID, SALES_AMOUNT from march_offline_sales
order by SALES_DATE, PRODUCT_ID, USER_ID