USE test_wyy_db_guet
GO

SET NOCOUNT ON

---------- retrieving  all columns----------
 
-- ********** Begin ********** --
-- ********** 此处写第一题的SQL语句 ********** --
select * from student where ssex='F'


-- ********** End ********** --

GO

---------- retrieving  sno and sname----------
-- ********** Begin ********** --
-- ********** 此处写第二题的SQL语句 ********** --

select sno,sname from student where sdept='IS'

-- ********** End ********** --

GO

---------- retrieving  sname----------
-- ********** Begin ********** --
-- ********** 此处写第三题的SQL语句 ********** --

select sname from student where sage<20 and ssex='F'
-- ********** End ********** --

GO
