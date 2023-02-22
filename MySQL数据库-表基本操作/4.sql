USE TestDb;

#请在此处添加实现代码
########## Begin ##########

########## modify the column to top ##########
ALTER TABLE student MODIFY `Name` varchar(25)  FIRST ;


########## modify the column to the rear of another column ##########

ALTER TABLE student MODIFY DeptId	int(11)  after Salary ;

########## End ##########

DESCRIBE student;
