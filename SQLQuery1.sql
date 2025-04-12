create database samaik;
use samaik;
create table msg(id int, fname varchar(20),lname varchar(20),age int,state varchar(20),payment int,message varchar(50));
insert into msg values(1,'Simran','Surve',20,'maharashtra',20000,'I love my planet Earth');
insert into msg values(2,'John','Dsouza',27,'california',25000,'Happy birthday Mom!');
insert into msg values(3,'Suzane','Peter',34,'eastern cape',30000,'Save our Earth');
insert into msg values(4,'Sherlin','Fernandes',30,'Texas',23000,'Happy Birthday David');
insert into msg values(5,'Harsh','Shah',22,'Gujarat',21000,'stop the destruction of mother nature');
insert into msg values(6,'Celine','Sebastian',45,'Alaska',35000,'How you doin!');
insert into msg values(7,'Kieron','Pollard',35,'West Indies',32000,'Happy Birthday Jenna');
insert into msg values(8,'Quinton','Decock',30,'northern cape',23000,'I love cricket');
insert into msg values(9,'Tanuja','Patil',24,'West bengal',21000,'Happy Birthday Vedant');
insert into msg values(10,'Justin','Beiber',33,'Texas',40000,'Music is the peace on Earth');
select * from msg;

