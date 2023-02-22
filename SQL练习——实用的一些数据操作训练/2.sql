USE test_wyy_db_guet
Go

SET NOCOUNT ON


-- ********** Begin ********** --
---------- 第一题----------

select snative,count(*) from student group by snative

-- ********** End ********** --
GO


-- ********** Begin ********** --
---------- 第二题----------

select sum(credit) from course where cno in (select cno from sc)


-- ********** End ********** --
GO

-- ********** Begin ********** --
---------- 第三题----------

select cno,grade,count(*) from sc group by cno,grade


-- ********** End ********** --
GO
