-- 코드를 작성해주세요
select count(*) FISH_COUNT from FISH_INFO f
left join FISH_NAME_INFO n using(FISH_TYPE)
where FISH_NAME regexp 'BASS|SNAPPER'