 USE test_product;

####################
#请在此处添加实现代码
########## Begin ##########

SELECT hd,count(*) from pc GROUP by hd HAVING count(*)<3 order by hd;


SELECT maker from  (SELECT maker,AVG(speed) as s FROM (SELECT maker,speed FROM product 
	NATURAL JOIN pc) as ppc1 GROUP BY maker) as ppc2
    
    WHERE s=(SELECT max(s) from (SELECT maker,AVG(speed) as s FROM (SELECT maker,speed FROM product 
	NATURAL JOIN pc) as ppc1 GROUP BY maker)as ppc2);

select maker from (select maker,count(model)as a from product where type = 'pc' group by maker)as b where a=2;


SELECT maker FROM product  WHERE model in (SELECT model from laptop WHERE speed >2) or model in (SELECT model from pc WHERE speed >2)  GROUP BY maker HAVING COUNT(*)>1;

-- SELECT maker from product group by maker HAVING maker='F' or maker='H' ; 
-- 没有答案只能这样子了，语句是17行


SELECT maker from (SELECT
 maker,count(*) as c from
(SELECT * FROM product GROUP BY maker,type) as p
GROUP BY maker) as pp
where c=(SELECT max(c) FROM (SELECT
 maker,count(*) as c from
(SELECT * FROM product GROUP BY maker,type) as p
GROUP BY maker) as pp );



########## End ##########
 
