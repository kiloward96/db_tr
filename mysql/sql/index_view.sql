-- index 사용
SELECT * FROM member;
CREATE INDEX mmIndex ON member (delYn, grade, gender);


ALTER TABLE member DROP INDEX mmIndex;
SHOW INDEX FROM member WHERE key_name = 'mmIndex';

-- View table 생성
CREATE VIEW memberV
AS
SELECT MB.seq, MB.name, MB.mobile, MA.addressZipcode, MA.addressMain, MA.addressDetail, MA.addressMore FROM member MB INNER JOIN memberAddress MA ON MB.seq = MA.member_seq WHERE 1=1 AND MB.delYn = 0 AND MA.defaultYn = 1;

-- trigger
CREATE DEFINER=`dbmaster`@`%` TRIGGER `member_BEFORE_INSERT` BEFORE INSERT ON `member` FOR EACH ROW BEGIN
	INSERT INTO `dolphin.member`
    (`seq`,
    `name`,
    `delYn`)
    VALUES
    ('99999',
    '트리거_테스트',
    '1');
END;

-- procedure

-- function



DELIMITER $$
CREATE FUNCTION getMemberName (
seq int
) 
RETURNS varchar(100)
BEGIN
	
    declare rtName varchar(100);

	select
		name into rtName
	from
		member MB
	where 1=1
		and MB.seq = seq
	;

	RETURN rtName;
END$$
DELIMITER ;