create database date_time;
create table orders(id int,name varchar(20),product varchar(20),order_date date,delivery_date date);
insert into orders values(1,'Rajat','mobile phone','2022-01-01','2022-01-07');
insert into orders values(2,'Raushan','laptop','2022-01-03','2022-01-08');
insert into orders values(3,'Rohit','dress','2022-02-03','2022-02-09');
insert into orders values(4,'Anup','earphones','2022-02-04','2022-02-09');
select * from orders;
select now() as 'Current Timestamp';
select curdate() as 'Current Date',curtime() as 'Current Time';
SELECT id,order_date,DATE_ADD(order_date,INTERVAL 30 DAY) AS OrderPayDate FROM orders;
SELECT id,order_date,DATE_ADD(order_date,INTERVAL 1 YEAR) AS OrderPayDate FROM orders;
SELECT id,order_date,DATE_SUB(order_date,INTERVAL 7 DAY) AS OrderPayDate FROM orders;
select delivery_date,extract(year from delivery_date) as 'year',
extract(month from delivery_date) as 'month',
extract(day from delivery_date) as 'day' from orders;
select delivery_date,extract(week from delivery_date) as 'week of year' from orders;
select delivery_date,order_date,datediff(delivery_date,order_date) as 'difference' from orders;
create table birthday(name varchar(20),birth_date_time timestamp);
insert into birthday values('Rajat','2002-04-14 23:45:00');
insert into birthday values('Raushan','2000-12-14 05:30:20');
insert into birthday values('Rohit','2001-12-12 09:10:10');
insert into birthday values('Anup','2001-08-18 13:25:00');
select * from birthday;
SELECT birth_date_time,ADDTIME(birth_date_time,'1 1:00:00') as 'new date time' from birthday;
select birth_date_time,hour(birth_date_time) as 'hour',
minute(birth_date_time) as 'minute',
second(birth_date_time) as 'second' from birthday;
select birth_date_time,timestampdiff(month,birth_date_time,'2004-03-21 19:05:15') as 'difference' from birthday;
