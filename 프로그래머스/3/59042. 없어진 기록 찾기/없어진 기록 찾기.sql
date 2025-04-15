-- 입양을 간 기록은 있는데, 보호소에 들어온 기록이 없는 동물의 ID와 이름을 ID 순으로 조회
select ANIMAL_ID, o.NAME
from ANIMAL_OUTS o
left join ANIMAL_INS i using(ANIMAL_ID)
where INTAKE_CONDITION is null