USE dolphin;

SELECT * FROM dolphin.member2;

ALTER TABLE dolphin.member2 ADD COLUMN nickname VARCHAR(45);

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




