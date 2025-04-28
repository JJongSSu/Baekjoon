-- 코드를 입력하세요
# SELECT 
#     i.REST_ID, 
#     i.REST_NAME, 
#     i.FOOD_TYPE, 
#     i.FAVORITES, 
#     i.ADDRESS, 
#     round(avg(r.REVIEW_SCORE),2) as SCORE 
# from REST_INFO i
# inner join REST_REVIEW r using(REST_ID)
# where i.ADDRESS like '%서울%'
# group by i.REST_ID
# order by SCORE DESC, FAVORITES DESC
SELECT
    i.REST_ID,
    i.REST_NAME,
    i.FOOD_TYPE,
    i.FAVORITES,
    i.ADDRESS,
    ROUND(AVG(r.REVIEW_SCORE), 2) AS SCORE
FROM
    REST_INFO i INNER JOIN REST_REVIEW r
    ON i.REST_ID = r.REST_ID
WHERE
    i.ADDRESS LIKE '서울%'
GROUP BY
    i.REST_ID
ORDER BY
    SCORE DESC,
    FAVORITES DESC