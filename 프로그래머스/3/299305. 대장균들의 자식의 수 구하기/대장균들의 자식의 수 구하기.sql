-- 코드를 작성해주세요
select ID, (select count(*) from ECOLI_DATA b where a.ID = b.PARENT_ID) as CHILD_COUNT from ECOLI_DATA a