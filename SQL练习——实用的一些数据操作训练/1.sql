USE test_wyy_db_guet
GO

SET NOCOUNT ON

  
-- ********** Begin ********** --
-- ********** 此处写第1题的SQL语句 ********** --
update student set sname=ltrim(rtrim(sname))

-- ********** End ********** --

GO

 -- ********** Begin ********** --
-- ********** 此处写第2题的SQL语句 ********** --
update student set sname=left(sname,1)+ltrim(right(sname,2))
-- ********** End ********** --

GO

-- ********** Begin ********** --
-- ********** 此处写第3题的SQL语句 ********** --
update student set snative=substring(snative,1,len(snative)-1)
    where right(snative,1)='族'

-- ********** End ********** --

GO
--下面语句请勿删除
SELECT * FROM student
GO
