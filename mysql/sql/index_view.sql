-- index 사용
select * from member;
CREATE INDEX mmIndex on member (delYn, grade, gender);


ALTER TABLE member DROP INDEX mmIndex;
SHOW INDEX FROM member WHERE key_name = 'mmIndex';

-- View table 생성
CREATE VIEW memberV
AS
SELECT MB.seq, MB.name, MB.mobile, MA.addressZipcode, MA.addressMain, MA.addressDetail, MA.addressMore FROM member MB INNER JOIN memberAddress MA ON MB.seq = MA.member_seq WHERE 1=1 AND MB.delYn = 0 AND MA.defaultYn = 1;


