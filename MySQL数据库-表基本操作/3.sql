USE TestDb;

#请在此处添加实现代码
########## Begin ##########

########## add the column ##########
ALTER TABLE student ADD sex varchar(2) default '男'  after `Name`;

 
########## delete the column ##########
ALTER TABLE student drop Salary;


########## End ##########

DESCRIBE student;
