USE test_product;

####################
#请在此处添加实现代码
########## Begin ##########

update pc set price=price+200
where model in (select model from product where maker='A');



-- 没有第二题？？？


DELETE FROM laptop where   model  in ( SELECT model from product where maker='B' ) ;

DELETE FROM product where maker='B' and type='laptop';

insert into product values ('K'	,9001,	'pc'),(
'K',	9002,	'laptop');

DELETE FROM product where  model in  ( SELECT model from  printer where type='ink-jet' ) ;

DELETE FROM printer where  type='ink-jet';

########## End ##########

select * from product order by maker;
select * from pc order by model;
select * from laptop order by model;
select * from printer order by model;
 
