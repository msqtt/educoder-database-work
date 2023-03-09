 USE test_product;

####################
#请在此处添加实现代码
########## Begin ##########

select hd, count(*) from pc group by hd having count(*) <= 2;

select maker from (
    select maker, avg(speed) sp from (
        select maker, speed from pc natural join product
    ) avg group by maker order by sp desc limit 1
) max;


-- 这两题没变
select maker from (select maker,count(model)as a from product where type = 'pc' group by maker)as b where a=2;

-- 这两题还是🍹哥的
select maker from product where model in (select model from laptop where speed >2) or model in (select model from pc where speed >2)  group by maker having count(*)>1;


select maker from (select maker, count(distinct type) c from product group by maker order by c desc limit 1) final


########## End ##########
 
