USE test_wyy_db_guet
Go

SET NOCOUNT ON



-- ********** Begin ********** --
---------- 第一题----------

select sc.sno from sc JOIN student on student.sno=sc.sno  where cno=2


-- ********** End ********** --
GO


-- ********** Begin ********** --
---------- 第二题----------
select grade from student  JOIN sc on student.sno=sc.sno  where sname='Liyong'


-- ********** End ********** --
GO

-- ********** Begin ********** --
---------- 第三题----------
select sc.sno from sc  JOIN (select cno from course where cname='Math') as m on m.cno=sc.cno

-- ********** End ********** --
GO
