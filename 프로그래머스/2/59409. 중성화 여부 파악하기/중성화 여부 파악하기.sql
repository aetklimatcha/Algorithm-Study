# 쿼리를 작성하는 목표, 확인할 지표: 동물의 아이디와 이름, 중성화 여부 조회, 아이디 순으로, 중성화가 되었다면 O 아니라면 X
SELECT
	ANIMAL_ID,
	NAME,
	IF(SEX_UPON_INTAKE REGEXP '^NEUTERED|^SPAYED', 'O', 'X') '중성화'
FROM 
	ANIMAL_INS
ORDER BY ANIMAL_ID;