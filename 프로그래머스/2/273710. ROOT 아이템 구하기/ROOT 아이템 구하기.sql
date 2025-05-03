-- 코드를 작성해주세요
select ITEM_ID, ITEM_NAME from ITEM_INFO
left join ITEM_TREE using(ITEM_ID)
where PARENT_ITEM_ID is null
order by ITEM_ID