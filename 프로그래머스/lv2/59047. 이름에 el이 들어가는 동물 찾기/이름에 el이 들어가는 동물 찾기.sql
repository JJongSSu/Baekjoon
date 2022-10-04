-- 이름에 "EL"이 들어가는 개의 아이디와 이름을 조회하는 SQL, 이름 순으로 조회
SELECT ANIMAL_ID, NAME from ANIMAL_INS
where name like '%el%' and ANIMAL_TYPE IN ('Dog')
order by name;