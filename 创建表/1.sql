sqlcmd -S localhost -U sa -P '<123123Aa!@>'

create database TestDb;

go

use TestDb;

go

create table t_emp(id int, name varchar(32), deptId int, salary float);

go
