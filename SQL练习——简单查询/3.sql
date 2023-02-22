USE test_wyy_db_guet


SET NOCOUNT ON

---------- 第一题 ----------
-- ********** Begin ********** --
select name,sex from r
union

select name,sex from s

-- ********** End ********** --



---------- 第二题 ----------
-- ********** Begin ********** --
select id,name,sex from r
intersect
select id,name,sex from s



-- ********** End ********** --


---------- 第三题 ----------
-- ********** Begin ********** --

select id,name,sex from r
except
select id,name,sex from s

-- ********** End ********** --
