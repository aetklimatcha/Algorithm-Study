# 쿼리를 작성하는 목표, 확인할 지표: 동물 보호소에 들어온 동물 이름 중, 이름에 'el'이 들어가는 개의 아이디와 이름

SELECT
    ANIMAL_ID,
    NAME
FROM
    ANIMAL_INS
WHERE
    ANIMAL_TYPE = 'Dog' AND
    NAME LIKE '%EL%'
ORDER BY NAME;