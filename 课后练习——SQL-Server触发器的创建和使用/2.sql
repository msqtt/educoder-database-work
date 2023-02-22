USE studentdb
go

SET NOCOUNT ON 
go
--********** create trigger_insert_score  **********--
--********** Begin **********--
create trigger trigger_insert_score
on score 
INSTEAD OF insert
as
declare @sno varchar(10);
declare @cno varchar(10);
declare @grade varchar(10);
begin
    select @sno=sno,@cno=cno,@grade=grade from inserted;
    if  exists(select * from student where sno=@sno)
        insert score values(@sno,@cno,@grade);
end


--********** End **********--
go
delete from score
go
insert into score values('1001','2001','89.5')
go
insert into score values('1002','2001','95')
go
insert into score values('1011','2001','88')
go
select * from score
go


--********** create trigger_delete_student  **********--
--********** Begin **********--
create trigger trigger_delete_student
on student
after delete 
as
declare @sno varchar(10);
begin
    select @sno=sno from deleted;
    delete score where sno=@sno;
end



--********** End **********--
go
delete from student where sno='1001'
go
select * from student
go
select * from score
go

--********** create trigger_protect_grade **********--
--********** Begin **********--
create trigger trigger_protect_grade
on score
INSTEAD OF update 
as
declare @sno varchar(10);
declare @cno varchar(10);
begin
    if UPDATE(grade)
        raiserror(N'更新grade操作被禁止',1,1);
    --如果之后呢？不知道按哪个索引啊。。。
end


--********** End **********--
go
update score set grade=84 where sno='1002'
go
select * from score
go


