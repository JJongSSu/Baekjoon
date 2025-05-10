-- 코드를 입력하세요
SELECT TRUNCATE(price, -4) PRICE_GROUP, count(product_id) PRODUCTS from PRODUCT
group by floor(PRICE/10000)
order by PRICE