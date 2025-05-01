-- 코드를 작성해주세요
select ID
from ECOLI_DATA
where 
(case 
    when PARENT_ID is null then 1
    when PARENT_ID in (select ID from ECOLI_DATA where PARENT_ID is null) then 2
    when PARENT_ID in (select ID from ECOLI_DATA where PARENT_ID in (select ID from ECOLI_DATA where PARENT_ID is null)) then 3
    else 4
end) = 3
order by ID