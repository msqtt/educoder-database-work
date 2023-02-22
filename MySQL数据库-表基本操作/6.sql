USE TestDb;

#请在此处添加实现代码
########## Begin ##########

########## update the value ##########
delete from product limit 1;

UPDATE  product
SET maker = 'JD'
WHERE maker='A'; 

UPDATE  product
SET type = 'computer'
WHERE type='pc'; 


########## End ##########

SELECT * FROM product;
