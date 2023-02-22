USE test_wyy_db_guet
Go

SET NOCOUNT ON


-- ********** Begin ********** --
---------- 第一题----------
update student set sage=sage+1
-- ********** End ********** --
GO


-- ********** Begin ********** --
---------- 第二题----------
update student set sdept='TS' where sdept='IS'
-- ********** End ********** --
GO

-- ********** Begin ********** --
---------- 第三题----------
update student set sno='08'+SUBSTRING(sno,3,len(sno)-2) where sdept='MA'
-- ********** End ********** --
GO


-- **********下面的语句请不要修改 ********** --
select * from student
GO
