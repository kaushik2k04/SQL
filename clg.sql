use clg;

create table student(
name varchar(5),
id int(5)
);

describe table student;

alter table student add column DOB int(5);
describe table student;

Insert into student values("Kaush",1,2004),("Kaush",1,2004),("Kaush",1,2004);
select * from student;

select name from student
where id=1;  
