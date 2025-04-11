create database cw;
use cw;
create table employee(id int,name varchar(20),age int,gender enum('F','M'),salary int,state varchar(20));
insert into employee values(1,'Tanya',20,'F',20000,'Gaya');
insert into employee values(2,'Raushan',22,'M',30000,'Delhi');
insert into employee values(3,'Rohit',25,'M',40000,'delhi');
insert into employee values(4,'Anup',30,'M',70000,'Banglore');
insert into employee values(5,'Archie',21,'F',15000,'Delhi');
insert into employee values(6,'farukh',24,'M',25000,'Pune');
insert into employee values(7,'Sanjeet',19,'M',12000,'Patna');
insert into employee values(8,'MOMO',26,'F',32000,'Bihar');
insert into employee values(9,'Shivani',28,'F',35000,'kerala');
insert into employee values(10,'Rajat',29,'M',40000,'Gaya');
select * from employee;
select name,salary,
case
when salary>10000 and salary<=30000 then 'Team member'
when salary>30000 and salary<=40000 then 'Team leader'
else 'Manager'
end as Designation
from employee;
Select name,gender,salary
from Employee
ORDER BY  CASE Gender
WHEN 'F' THEN Salary end DESC,
case WHEN gender='M' THEN Salary  
END;
Select 
CASE
when salary>10000 and salary<=30000 then 'Team member'
when salary>30000 and salary<=40000 then 'Team leader'
Else 'Manager'
END AS Designation,
Min(salary) as MinimumSalary,
Max(Salary) as MaximumSalary
from Employee
Group By
CASE
when salary>10000 and salary<=30000 then 'Team member'
when salary>30000 and salary<=40000 then 'Team leader'
Else 'Manager'
END;
UPDATE employee 
SET state  = CASE state
 WHEN 'maharashtra' THEN 'pune' 
 WHEN 'Bihar' THEN 'Gaya' 
  ELSE 'Other' 
 END;
 set @id=10;
set @age=29;
Set @name='Rajat';
Set @Gender=0;
Set @state='Gaya';
set @salary=35000;
Insert into employee
values 
(@id,@name,@age,
CASE @Gender
WHEN 0 THEN 'M'
WHEN 1 THEN 'F'
end,
@salary,
@state);
