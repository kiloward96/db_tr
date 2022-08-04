-- select
-- 	a.ifmmSeq
--     ,a.ifmmName
--     ,a.ifmmId
--     ,b.ifmaAddress1
-- from infrMember a
-- -- left join infrMemberAddress b on b.ifmmSeq = a.ifmmSeq
-- inner join infrMemberAddress b on b.ifmmSeq = a.ifmmSeq
-- -- join infrMemberAddress b on b.ifmmSeq = a.ifmmSeq
-- ;

SELECT
	a.seq
    ,a.productName
    ,a.price
    ,b.optionMain
    ,b.optionSub
    from product a
    	-- a = alias
left join productOption b on b.product_seq = a.seq
-- inner join productOption b on b.product_seq = a.seq
;
