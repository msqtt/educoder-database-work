USE test_wyy_db_guet
GO

SET NOCOUNT ON

 
-- ********** Begin ********** --
-- ********** 此处写第一题的SQL语句 ********** --
select count(*) from course where credit>2

-- ********** End ********** --

GO
 
-- ********** Begin ********** --
-- ********** 此处写第二题的SQL语句 ********** --

select sum(credit) from course where left(cno,2)='BT'


-- ********** End ********** --

GO

 
-- ********** Begin ********** --
-- ********** 此处写第三题的SQL语句 ********** --

select left(cno,2),count(*) from course group by left(cno,2)


-- ********** End ********** --

GO
