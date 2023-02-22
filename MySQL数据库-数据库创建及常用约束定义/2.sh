mysql -uroot -p123123 -h127.0.0.1

create database TestDb;

use TestDb;

CREATE TABLE t_student
(
  sno VARCHAR(20) not null,
  sname VARCHAR(32) not null,
  dptno INT,
  ssex VARCHAR(2)
);
