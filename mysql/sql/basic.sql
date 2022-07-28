USE dolphin;

SELECT * FROM member2;

ALTER TABLE member2 ADD COLUMN nickname VARCHAR(45);

ALTER TABLE member2 ADD COLUMN nameEng VARCHAR(45) AFTER name;


ALTER TABLE member2 MODIFY COLUMN nickname CHAR(90);

ALTER TABLE member2 CHANGE COLUMN nickname starname varchar(45);