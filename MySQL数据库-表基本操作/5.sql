USE TestDb;

#请在此处添加实现代码
########## Begin ##########

########## bundle insert the value ##########

INSERT INTO product(maker,model,type)
VALUES 
('X',  5001 , 'pc'),
('X' ,6009 , 'laptop'),
('Y' ,7809, 'printer');



LOAD DATA LOCAL INFILE 'src1/step1/product.csv' INTO TABLE product character set gbk fields terminated by ',' ;


########## End ##########
SELECT * FROM product;
