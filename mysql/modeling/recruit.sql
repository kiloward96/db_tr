CREATE TABLE IF NOT EXISTS `test`.`recruit` (
 `seq` INT NOT NULL COMMENT '시퀀스',
 `job` VARCHAR(45) NOT NULL COMMENT '지원분야',
 `object` VARCHAR(45) NOT NULL COMMENT '경력구분',
 `pay` INT NOT NULL COMMENT '희망연봉',
 `name` VARCHAR(40) NOT NULL COMMENT '이름',
 `name_ch` VARCHAR(40) NOT NULL COMMENT '한문',
 `name_en` VARCHAR(40) NOT NULL COMMENT '영문',
 `dob` VARCHAR(45) NOT NULL COMMENT '생년월일',
 `mobile` VARCHAR(40) NULL COMMENT '전화번호',
 `mobile_emer` VARCHAR(40) NULL COMMENT '비상연락망',
 `email` VARCHAR(45) NULL COMMENT '이메일',
 `age` INT NULL COMMENT '나이',
 `address` VARCHAR(40) NULL COMMENT '주소',
 `hobby` VARCHAR(40) NULL COMMENT '취미',
 PRIMARY KEY (`seq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
COMMENT = '입사지원'