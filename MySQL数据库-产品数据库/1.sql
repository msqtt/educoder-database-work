USE test_product;


####################
#请在此处添加实现代码
########## Begin ##########
select model,speed,hd from pc where price<1000 order by hd;

select maker,model,type from product where type='printer' order by maker;

select model,color,type,price from printer where color='T' and type = 'laser' order by model;

select maker from product where maker not in (select maker from product where type in ('pc','printer')) order by maker;

select a.model as modela,b.model as modelb from pc as a,pc as b where a.speed=b.speed and a.ram=b.ram and a.model > b.model order by modela,modelb;
########## End ##########


########## End ##########
 
