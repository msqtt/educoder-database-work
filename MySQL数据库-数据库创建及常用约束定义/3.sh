mysql -uroot -p123123 -h127.0.0.1

use TestDb;

CREATE TABLE t_user1
(
  useid int(11) not null,
  name varchar(32),
  password varchar(11),
  phone varchar(11),
  email varchar(32),
  PRIMARY KEY(useid)
);


CREATE TABLE t_user2
(
  name varchar(32),
  phone varchar(11),
  email varchar(32),
  PRIMARY KEY(name,phone)
);
