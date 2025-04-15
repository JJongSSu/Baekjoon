-- 코드를 입력하세요
SELECT TITLE, board.BOARD_ID, REPLY_ID, reply.WRITER_ID, reply.CONTENTS, DATE_FORMAT(reply.CREATED_DATE, '%Y-%m-%d') CREATED_DATE 
from USED_GOODS_BOARD board 
inner join USED_GOODS_REPLY reply on board.BOARD_ID = reply.BOARD_ID
where board.CREATED_DATE >= '2022-10-01' and board.CREATED_DATE < '2022-11-01'
order by reply.CREATED_DATE, TITLE