-- 코드를 입력하세요
SELECT user_id, product_id from ONLINE_SALE
group by USER_ID, PRODUCT_ID
having count(PRODUCT_ID) > 1
order by USER_ID, PRODUCT_ID DESC