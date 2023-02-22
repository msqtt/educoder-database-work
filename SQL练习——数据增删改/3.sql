USE test_wyy_db_guet
Go

SET NOCOUNT ON

---------- 第一题 ----------
-- ********** Begin ********** --
delete from R where id='1002'


-- ********** End ********** --

GO

---------- 第二题 ----------
-- ********** Begin ********** --
delete from S where sex='M' and id in(
select id from R
InterSect
select id from S
)


-- ********** End ********** --

GO

---------- 第三题 ----------
-- ********** Begin ********** --
delete from R where left(name,1)='A'


-- ********** End ********** --

GO

--********** 下面的语句请不要删除 ********** --
select id,name,sex from R
union all
select id,name,sex from S
GO
