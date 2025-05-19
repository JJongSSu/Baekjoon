-- 코드를 입력하세요
SELECT concat('/home/grep/src/',BOARD_ID,'/',FILE_ID,FILE_NAME,FILE_EXT) FILE_PATH from USED_GOODS_BOARD
left join USED_GOODS_FILE using(BOARD_ID)
where VIEWS = (select max(VIEWS) from USED_GOODS_BOARD)
order by FILE_ID DESC