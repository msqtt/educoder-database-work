USE test_wyy_db_guet
Go

SET NOCOUNT ON


-- ********** Begin ********** --
---------- 第一题----------
select count(*) from printer where color='T' and type='laser';

-- ********** End ********** --
GO


-- ********** Begin ********** --
---------- 第二题----------
select min(price) from printer where type='ink-jet'

-- ********** End ********** --
GO

-- ********** Begin ********** --
---------- 第三题----------

  select model,price from printer where 
   price= (select max(price) from printer where type='laser')


-- ********** End ********** --
GO
