-- 코드를 작성해주세요
with recursive cte_generation as (
    select ID, PARENT_ID, 1 as generation
    from ECOLI_DATA
    where PARENT_ID is null
    
    union all
    
    select e.ID, e.PARENT_ID, g.generation + 1
    from ECOLI_DATA e
    join cte_generation g on e.PARENT_ID = g.ID
    where g.generation < 4  # 재귀 단계 설정(기본 1000)
)

select ID from cte_generation
where generation = 3
order by ID