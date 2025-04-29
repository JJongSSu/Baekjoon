-- 코드를 작성해주세요
with max_length as(select *, row_number() over (partition by FISH_TYPE order by LENGTH DESC) rn from FISH_INFO)

select f.ID, n.FISH_NAME, f.LENGTH from max_length f
left join FISH_NAME_INFO n using(FISH_TYPE)
where rn = 1
order by ID

