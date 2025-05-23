with joined_user as(
    select USER_ID, joined from USER_INFO
    where YEAR(JOINED) = '2021'
)

SELECT
   YEAR(sales_date) AS YEAR, 
   MONTH(sales_date) AS MONTH, 
   COUNT(DISTINCT USER_ID) AS PURCHASED_USERS, 
   ROUND(COUNT(DISTINCT USER_ID) / (SELECT COUNT(DISTINCT USER_ID) FROM joined_user), 1) AS PUCHASED_RATIO
FROM joined_user
JOIN ONLINE_SALE USING(USER_ID)
GROUP BY YEAR, MONTH
ORDER BY YEAR, MONTH;