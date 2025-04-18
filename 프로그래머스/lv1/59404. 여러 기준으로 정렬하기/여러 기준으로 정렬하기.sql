-- 모든 동물의 아이디와 이름, 보호 시작일을 이름 순으로 조회하는 SQL
-- 단, 이름이 같은 동물 중에서는 보호를 나중에 시작한 동물을 먼저 보여줘야 합니다.
SELECT ANIMAL_ID, NAME, DATETIME from ANIMAL_INS
order by name, DATETIME desc;