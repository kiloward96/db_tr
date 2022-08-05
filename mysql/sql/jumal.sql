USE dolphin;

-- 공토코드불러오기
select * from commonCodeGroup;
select
	a.seq as ccg
    ,a.groupName as ccg
    ,b.seq as cc
    ,b.codeName as ccname
    from commonCodeGroup a
INNER JOIN commonCode b on b.commonCodeGroup_seq = a.seq order by a.seq, b.sort
;

-- 로그인

SELECT
	*
	FROM member 
WHERE 1=1 
AND id = 'kiloward96'
AND password = '1qaz2wsx1'
;

-- 상품옵션목록

SELECT
	a.seq
    ,a.productName
    ,a.price
    ,b.optionMain
    ,b.optionSub
FROM product a
		 -- left join productOption b on b.product_seq = a.seq
INNER JOIN productOption b on b.product_seq = a.seq
;

-- 내 주문목록
SELECT
	a.seq
    ,a.
FROM memberChoiceOption a
INNER JOIN 

;