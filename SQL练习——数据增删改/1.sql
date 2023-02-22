USE test_wyy_db_guet
GO

SET NOCOUNT ON


-- ********** Begin ********** --
-- ********** 此处写第一题的SQL语句 ********** --
insert into student values('07002','lucy','F',21,'MA')

-- ********** End ********** --

GO

-- ********** Begin ********** --
-- ********** 此处写第二题的SQL语句 ********** --
insert into student(sno,sname,ssex) values('07003','Andy','F')
-- ********** End ********** --

GO

-- ********** Begin ********** --
-- ********** 此处写第三题的SQL语句 ********** --
insert into student select sno='04005',sname,ssex,sage,sdept from student where sno='04003'
-- ********** End ********** --
GO



--此处请不要随意修改
select * from student

GO
