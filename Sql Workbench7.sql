create database reverse;
use reverse;
create table ward(ward_no int,floor int,nurses int,bed int,primary key(ward_no));
create table doctor(doctor_id int,doctor_name varchar(20),specialization varchar(20),ward_no int,salary float,primary key(doctor_id),foreign key(ward_no) references ward(ward_no));
create table patient(patient_id int,patient_name varchar(20),dob date,address varchar(20),doctor_id int,visit_date date,primary key(patient_id),foreign key(doctor_id) references doctor(doctor_id));