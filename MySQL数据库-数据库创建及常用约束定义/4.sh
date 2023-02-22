mysql -uroot -p123123 -h127.0.0.1

use TestDb;

CREATE TABLE t_depart
(
  dptno INT not null,
  dptname varchar(22),
  PRIMARY KEY(dptno)
);


CREATE TABLE t_student
(
  stid varchar(12) default 'NULL', # 😅这个太坑了
  name varchar(22),
  dptno INT,
  PRIMARY KEY(stid),
  CONSTRAINT fk_stu_depart FOREIGN KEY (dptno) REFERENCES t_depart(dptno)
);
