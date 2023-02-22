mysql -uroot -p123123 -h127.0.0.1

use TestDb;

CREATE TABLE t_user
(
  id INT auto_increment,
  username VARCHAR(32) not null unique,
  sex VARCHAR(4) default 'm',
  primary key (id)
);
