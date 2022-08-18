USE dolphin;

-- 공토코드불러오기
select * from commonCodeGroup;
select
	ccg.seq as ccgSEQ
    ,ccg.groupName as ccg
    ,cc.sort as ccSEQ
    ,cc.codeName as ccname
    ,cc.seq
    from commonCodeGroup ccg
INNER JOIN commonCode cc on cc.commonCodeGroup_seq = ccg.seq ORDER BY ccg.seq, cc.sort
;

-- 로그인

SELECT
	seq
    ,id
    ,name
	FROM member 
WHERE 1=1 
AND id = 'kiloward96'
AND password = '1qaz2wsx1'
;

-- main.이달의 상품 top 10

SELECT 
    pddt.thumbnailImgSrc
	,pd.productName
    ,pd.price
FROM product pd
INNER JOIN productDetail pddt on pd.seq = pddt.product_seq
INNER JOIN productReview pdr on pd.seq = pdr.product_seq
WHERE pddt.thumbnaillImgNumber = 1
ORDER BY (SELECT 
				COUNT(*) 
			FROM productReview) 
DESC LIMIT 10
;

show full columns from productDetail;

-- MAIN.카테고리 별 신상품

SELECT 
    pddt.thumbnailImgSrc
	,pd.productName
    ,pd.price
FROM product pd
INNER JOIN productDetail pddt on pd.seq = pddt.product_seq
INNER JOIN productReview pdr on pd.seq = pdr.product_seq
WHERE pddt.thumbnaillImgNumber = 1
ORDER BY (SELECT 
				COUNT(*) 
			FROM productReview) 
DESC LIMIT 10
;

-- 제품상세페이지

-- 제품상세페이지.상품리뷰.목록

-- 비밀번호 변경
UPDATE member SET
	password = '$NEW_PWD'
    WHERE 1=1
    AND id = '현재 사용자'
    AND password = '현재 패스워드'
;

-- 상품옵션목록

select * from productReview;

SELECT
	pd.seq
    ,pd.productName
    ,pd.price
    ,pdop.optionMain
    ,pdop.optionSub
    ,
FROM product pd
		 -- left join productOption pdop on pdop.product_seq = pd.seq
INNER JOIN productOption pdop on pdop.product_seq = pd.seq
;

-- 내 주문목록

-- show full columns from orderList;
-- select * from orderList;
-- select * from memberPayment;
-- select * from productOption;
-- select * from memberChoiceOption;

SELECT
	ol.orderNumber AS '주문번호'
	,ol.orderStatus AS '주문상태'
	,ol.orderDate AS '주문일자'
    ,pd.productName AS '상품명'
    ,pdo.optionMain AS '옵션'
    ,pdo.optionSub AS '세부옵션'
    ,mbco.choiceStock AS '수량'
    ,mbco.priceTotal AS '총 금액'
FROM orderList ol
INNER JOIN member mb on mb.seq = ol.member_seq
INNER JOIN memberChoiceOption mbco on mbco.seq = ol.memberChoiceOption_seq
INNER JOIN productOption pdo on pdo.seq = mbco.productOption_seq
INNER JOIN product pd on pd.seq = pdo.product_seq

WHERE mb.id = 'kiloward96' AND mb.delYn = 0 ORDER BY ol.orderDate DESC
;

-- 주문 상세



-- 마이페이지 데이터 조회

SELECT
	mb.id AS '아이디'
    ,mb.name AS '이름'
	,mb.gender AS '성별'
    ,mb.email AS '이메일'
    ,mb.dob AS '생년월일'
    ,mbad.addressZipcode AS '우편번호'
    ,mbad.addressMain AS '주소'
    ,mbad.addressDetail AS '상세주소'
FROM member mb
INNER JOIN memberAddress mbad on mbad.member_seq = mb.seq and mbad.default_yn = 0
WHERE mb.id LIKE '%02'
UNION ALL
SELECT
	mb.id AS '아이디'
    ,mb.name AS '이름'
	,mb.gender AS '성별'
    ,mb.email AS '이메일'
    ,mb.dob AS '생년월일'
    ,mbad.addressZipcode AS '우편번호'
    ,mbad.addressMain AS '주소'
    ,mbad.addressDetail AS '상세주소'
FROM member mb
INNER JOIN memberAddress mbad on mbad.member_seq = mb.seq and mbad.default_yn = 0
WHERE mb.id LIKE '%96'
;

-- 상품 리뷰 페이지

SELECT * from product;
    
    
    