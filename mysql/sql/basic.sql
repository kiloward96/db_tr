USE dolphin;

SELECT * FROM dolphin.member2;

ALTER TABLE dolphin.member ADD COLUMN nickname VARCHAR(45);

ALTER TABLE dolphin.member2 ADD COLUMN nameEng VARCHAR(45) AFTER name;

-- 컬럼 데이터 속성변경

ALTER TABLE dolphin.member2 MODIFY COLUMN nickname CHAR(90);

-- 컬럼 명칭+데이터 속성 변경

ALTER TABLE dolphin.member2 CHANGE COLUMN nickname starname varchar(45);

-- 컬럼 삭제

ALTER TABLE member2 DROP COLUMN starname;

-- row 삭제

SELECT seq, id, name FROM member;

DELETE FROM member WHERE seq = 22;

UPDATE member SET 
id = 'test11' 
WHERE
seq = 21 
AND id = 'KILOWARD96';



SELECT @@character_set_database, @@collation_database;

-- SET SESSION collation_database = utf8mb4_unicode_ci;

SHOW VARIABLES LIKE 'collation%';

ALTER TABLE `product_review` CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

ALTER DATABASE dolphin CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

show variables like 'char%';

select * from product;

SELECT * FROM member
WHERE 1=1
-- AND name LIKE 'Lee%'
-- AND name LIKE '%gwan'
AND name LIKE '%Gyu%'
;

SELECT * FROM member
WHERE 1=1
-- AND gender = 0
-- AND gender > 0
AND gender >= 1
-- AND gender BETWEEN 0 AND 1
;

SELECT * FROM member
WHERE 1=1
AND nicKname IS NULL
-- AND nicKname IS NOT NULL
-- LIMIT 3
;
UPDATE member SET nickname = '' WHERE seq = 21;
