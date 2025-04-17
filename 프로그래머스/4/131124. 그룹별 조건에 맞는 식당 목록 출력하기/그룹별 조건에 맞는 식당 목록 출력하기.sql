-- 코드를 입력하세요
# select * from MEMBER_PROFILE
# where MEMBER_ID = (select MEMBER_ID from REST_REVIEW
# group by MEMBER_ID
# order by sum(REVIEW_SCORE) DESC
# limit 1)

select MEMBER_NAME, REVIEW_TEXT, DATE_FORMAT(REVIEW_DATE, '%Y-%m-%d') REVIEW_DATE from REST_REVIEW
left join MEMBER_PROFILE using(MEMBER_ID)
where MEMBER_ID = (select MEMBER_ID from REST_REVIEW
group by MEMBER_ID
order by sum(REVIEW_SCORE) DESC
limit 1)
order by REVIEW_DATE, REVIEW_TEXT