-- 동물 보호소에 들어온 동물 중, 이름이 없는 채로 들어온 동물의 ID를 조회하는 SQL
SELECT ANIMAL_ID from ANIMAL_INS
where NAME is null;