create database Industry;
use Industry;
CREATE TABLE employee (
    e_name VARCHAR(30) NOT NULL,
    id INT PRIMARY KEY,
    address VARCHAR(30)
);
alter table employee
add column email varchar(30) not null;

describe table employee;

select *
from employee;

alter table employee
drop column email;

INSERT INTO employee (e_name, id, address, email) VALUES
(('John', 1, 'Delhi', 'john@example.com'),
('Amit', 2, 'Mumbai', 'amit@example.com'),
('Sara', 3, 'Chennai', 'sara@example.com'),
('Ravi', 4, 'Kolkata', 'ravi@example.com'),
('Priya', 5, 'Bangalore', 'priya@example.com'),
('Karan', 6, 'Hyderabad', 'karan@example.com'),
('Neha', 7, 'Pune', 'neha@example.com'),
('Vijay', 8, 'Jaipur', 'vijay@example.com'),
('Anita', 9, 'Lucknow', 'anita@example.com'),
('Rahul', 10, 'Ahmedabad', 'rahul@example.com'));

INSERT INTO employee (e_name, id, address, email) VALUES
('Rul', 11, 'Ahmedabad', 'ral@example.com'),
('R', 12, 'Ahmedabad', 'ul@example.com');

insert into employee values
('Rul', 13, 'Ahmedabad', 'ral@example.com'),
('R', 14, 'Ahmedabad', 'ul@example.com');

alter table employee
add column salary int  not null;

select * from employee;

UPDATE employee SET salary = 30000 WHERE id = 1;
UPDATE employee SET salary = 35000 WHERE id = 2;
UPDATE employee SET salary = 28000 WHERE id = 3;
UPDATE employee SET salary = 40000 WHERE id = 4;
UPDATE employee SET salary = 32000 WHERE id = 5;
UPDATE employee SET salary = 37000 WHERE id = 6;
UPDATE employee SET salary = 29000 WHERE id = 7;
UPDATE employee SET salary = 36000 WHERE id = 8;
UPDATE employee SET salary = 31000 WHERE id = 9;
UPDATE employee SET salary = 33000 WHERE id = 10;
UPDATE employee SET salary = 31000 WHERE id = 11;
UPDATE employee SET salary = 33000 WHERE id = 12;
UPDATE employee SET salary = 31000 WHERE id = 13;
UPDATE employee SET salary = 33000 WHERE id = 14;


select * from employee;
update employee set address='Chennai'
where id=1;

update employee
set address='Chennai'
where id=12;

select * from employee
order by e_name;

select distinct address from employee;

delete from employee
where e_name='R';

select e_name from employee
where id between 1 and 10
limit 6;

select count(*) AS count
from employee;

select max(salary)
from employee;


select min(salary)
from employee;

Select ucase(e_name)
from employee; 

alter table employee
add column job_desc varchar(30);

update employee set job_desc='manager' where id=1;

alter table employee
alter job_desc set default 'unassigned';

describe employee;

select job_desc from employee;


UPDATE employee SET job_desc = 'hr' WHERE id = 2;
UPDATE employee SET job_desc = 'developer' WHERE id = 3;
UPDATE employee SET job_desc = 'tester' WHERE id = 4;
UPDATE employee SET job_desc = 'manager' WHERE id = 5;
UPDATE employee SET job_desc = 'analyst' WHERE id = 6;
UPDATE employee SET job_desc = 'intern' WHERE id = 7;
UPDATE employee SET job_desc = 'hr' WHERE id = 8;
UPDATE employee SET job_desc = 'designer' WHERE id = 9;
UPDATE employee SET job_desc = 'tech lead' WHERE id = 10;
UPDATE employee SET job_desc = 'project manager' WHERE id = 11;
UPDATE employee SET job_desc = 'data engineer' WHERE id = 12;
UPDATE employee SET job_desc = 'product owner' WHERE id = 13;
UPDATE employee SET job_desc = 'support engineer' WHERE id = 14;

INSERT INTO employee (e_name, id, address, email, salary, job_desc) VALUES
('Anil', 15, 'Kochi', 'anil@example.com', 31000, 'cloud architect'),
('Ramesh', 16, 'Chennai', 'ramesh@example.com', 32000, 'tester'),
('Sita', 17, 'Mumbai', 'sita@example.com', 33000, 'developer'),
('Raj', 18, 'Bangalore', 'raj@example.com', 36000, 'manager'),
('Kavya', 19, 'Kolkata', 'kavya@example.com', 30000, 'intern'),
('Harish', 20, 'Hyderabad', 'harish@example.com', 35000, 'analyst'),
('Sneha', 21, 'Pune', 'sneha@example.com', 37000, 'developer'),
('Deepak', 22, 'Jaipur', 'deepak@example.com', 34000, 'tester'),
('Asha', 23, 'Lucknow', 'asha@example.com', 32000, 'hr'),
('Vikram', 24, 'Ahmedabad', 'vikram@example.com', 39000, 'tech lead'),
('Geeta', 25, 'Delhi', 'geeta@example.com', 31000, 'support engineer');

select * from employee;

select job_desc,count(id)
from employee
group by job_desc
having count(id)>=3;

alter table employee
modify id int primary key;
describe employee;
