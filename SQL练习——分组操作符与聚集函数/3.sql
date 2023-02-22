USE test_wyy_db_guet
Go

SET NOCOUNT ON

---------- 第1题 ----------
-- ********** Begin ********** --

select hd from V_test group by hd having count(hd)<3


-- ********** End ********** --

GO

---------- 第2题 ----------
-- ********** Begin ********** --

 select max(s) from (select avg(speed)  s  from V_test group by maker ) as ee  


-- ********** End ********** --

GO

---------- 第3题 ----------
-- ********** Begin ********** --

select maker,count(*) from (select maker from V_test where price>1000) as ee group by maker




-- ********** End ********** --

GO
---------- 第4题 ----------
-- ********** Begin ********** --

select maker,type,avg(price) from V_test group by maker,type


-- ********** End ********** --

GO
