# 2021년 가입 전체 회원
with joined_user as(
    select USER_ID, joined from USER_INFO
    where YEAR(JOINED) = '2021'
)

select
    YEAR(sales_date) YEAR, 
    MONTH(sales_date) MONTH, 
    count(distinct USER_ID) PURCHASED_USERS, 
    round(count(distinct USER_ID) / TOTAL_USER, 1) PUCHASED_RATIO
from joined_user j1
join ONLINE_SALE o using(USER_ID)
join (select count(distinct USER_ID) TOTAL_USER from joined_user) j2
group by YEAR, MONTH