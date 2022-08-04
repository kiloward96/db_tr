USE dolphin;

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
	-- a = alias
		 -- left join productOption b on b.product_seq = a.seq
INNER JOIN productOption b on b.product_seq = a.seq
;

-- 