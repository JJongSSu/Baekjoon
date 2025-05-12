-- 코드를 입력하세요
SELECT USER_ID, NICKNAME, sum(PRICE) TOTAL_SALES from USED_GOODS_BOARD b
left join USED_GOODS_USER u on (b.WRITER_ID = u.USER_ID)
where b.STATUS = 'DONE'
group by WRITER_ID
having sum(PRICE) >= 700000
order by TOTAL_SALES