-- 코드를 작성해주세요
with recursive cet_generation as (
    select ID, PARENT_ID, 1 as GENERATION
    from ECOLI_DATA
    where PARENT_ID is null
    
    union all
    
    select e.ID, e.PARENT_ID, g.GENERATION + 1
    from ECOLI_DATA e
    join cet_generation g on e.PARENT_ID = g.ID
)

select count(*) COUNT, GENERATION from cet_generation g1
where not exists(
    select 1 from cet_generation g2
    where g1.ID = g2.PARENT_ID
)
group by GENERATION
order by GENERATION

