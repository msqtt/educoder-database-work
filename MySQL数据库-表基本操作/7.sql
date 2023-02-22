USE TestDb;

#请在此处添加实现代码
########## Begin ##########

########## delete the value ##########

DELETE FROM  printer where price>800;

DELETE FROM  product where   model not in ( SELECT model from printer) ;

########## End ##########

SELECT * FROM product;
SELECT * FROM printer;
