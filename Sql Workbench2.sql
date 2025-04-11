create database sr1;
use sr1;
create table msg(id int, fname varchar(20),lname varchar(20),age int,state varchar(20),payment int,message varchar(50));
insert into msg values(1,'Rajat','Ravindra',30,'Bihar',2000,'I love my planet Earth');
insert into msg values(1,'Anup','Singh',30,'Bihar',3000,'Happy birthday Anup');
select * from msg;
select message,char_length(message) as length_of_message from msg;
select fname,lname,concat(fname,lname) as full_name from msg;
select fname,lname,concat_ws(' ',fname,lname) as full_name from msg;
select elt(3,id,lname,age,payment) from msg;
select field(age,id,lname,age,payment) as 'index' from msg;
select insert(state,4,3,fname) as 'new values' from msg;
select left(message,6) as 'left characters' from msg;
select right(state,4) as 'right characters' from msg;
select lower(message) as 'small message' from msg;
select upper(message) as 'big message' from msg;
select space(15) as '15 spaces';
select ltrim('   cloudml');
select rtrim('cloudml    ');
select fname,state from msg where state regexp 'Texas';
select message from msg where message regexp '^Happy';
select fname from msg where fname regexp '[A-Z]';
select fname from msg where fname regexp '^[a-z]$';
select fname,payment from msg where payment regexp '[0-9]';
select fname,age from msg where age regexp '20|30';
select fname,message from msg where message regexp 'Earth$';
select fname,lname from msg where lname regexp 'S(u|e).';
select fname,payment from msg where payment regexp '^3([0-9]{4})';
select fname from msg where fname regexp '^[^A]';




