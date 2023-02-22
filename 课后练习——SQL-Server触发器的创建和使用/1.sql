USE accountDB
go

SET NOCOUNT ON 
go
--********** create trigger_insert_operator  **********--
--********** Begin **********--
create trigger trigger_insert_operator
on operator
after insert
as
begin
declare @type varchar(5);
declare @accno varchar(5);
declare @num int;
select @type=type,@accno=accno,@num=num from inserted;
if @type='in'
    begin
        if not exists (select * from account where accountno=@accno)
        insert  account (accountno,total)values (@accno,@num);
        else
        update account set total=total+@num where accountno=@accno;
    end
else if @type='out'
    begin
        if not exists (select * from account where accountno=@accno)
            begin
                RAISERROR(N'插入的账户异常，操作被禁止',1,1); --raiserror 是用于抛出一个错误
                -- rollback;    --数据回滚
            end
        else
            begin
                if @num> (select total from account where accountno=@accno)
                    begin

                        RAISERROR(N'插入的账户异常，操作被禁止',1,1); --raiserror 是用于抛出一个错误
                        -- rollback;    --数据回滚
                    end
                else
                    update account set total=total-@num where accountno=@accno;
            end
    end
end




--********** End **********--
go

--以下代码请勿删除
insert into operator(accno,type,num) values('002','in',878)
go
insert into operator(accno,type,num) values('003','in',608)
go
insert into operator(accno,type,num) values('002','out',90)
go
insert into operator(accno,type,num) values('001','out',50)
go
insert into operator(accno,type,num) values('004','out',50)
go
select * from account
go
-- select * from operator
-- go

