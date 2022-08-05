USE dolphin;

-- 공토코드불러오기
select * from commonCodeGroup;
select
	ccg.seq as ccgSEQ
    ,ccg.groupName as ccg
    ,cc.sort as ccSEQ
    ,cc.codeName as ccname
    from commonCodeGroup ccg
INNER JOIN commonCode cc on cc.commonCodeGroup_seq = ccg.seq order by ccg.seq, cc.sort
;

-- 로그인

SELECT
	seq
    ,id
    ,password
	FROM member 
WHERE 1=1 
AND id = 'kiloward96'
AND password = '1qaz2wsx1'
;

-- 상품옵션목록

SELECT
	pd.seq
    ,pd.productName
    ,pd.price
    ,pdop.optionMain
    ,pdop.optionSub
FROM product pd
		 -- left join productOption pdop on pdop.product_seq = pd.seq
INNER JOIN productOption pdop on pdop.product_seq = pd.seq
;

-- 내 주문목록
SELECT
	mbco.seq
    ,mbco.
FROM memberChoiceOption mbco
INNER JOIN 

;