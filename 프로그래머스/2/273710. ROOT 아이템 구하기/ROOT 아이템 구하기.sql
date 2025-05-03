-- 코드를 작성해주세요
select ITEM_ID, ITEM_NAME from ITEM_INFO
where (select PARENT_ITEM_ID from ITEM_TREE where ITEM_INFO.ITEM_ID = ITEM_TREE.ITEM_ID) is null