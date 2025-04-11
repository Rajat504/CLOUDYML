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

