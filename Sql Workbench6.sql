create database patient;
CREATE TABLE patients(
   patient_id INTEGER  NOT NULL PRIMARY KEY 
  ,name       VARCHAR(6) NOT NULL
  ,age        INTEGER  NOT NULL
  ,gender     VARCHAR(6) NOT NULL
  ,address    VARCHAR(12) NOT NULL
  ,disease    VARCHAR(13) NOT NULL
  ,doctor_id  INTEGER  NOT NULL
);
select * from patients;
INSERT INTO patients(patient_id,name,age,gender,address,disease,doctor_id) VALUES (1,'reema',23,'female','althan,Surat','fever',21);
INSERT INTO patients(patient_id,name,age,gender,address,disease,doctor_id) VALUES (2,'kusum',50,'female','vadodara','heart failure',22);
INSERT INTO patients(patient_id,name,age,gender,address,disease,doctor_id) VALUES (3,'carlin',43,'male','vapi','infection',23);
INSERT INTO patients(patient_id,name,age,gender,address,disease,doctor_id) VALUES (4,'rahul',26,'male','navsari','cancer',21);
INSERT INTO patients(patient_id,name,age,gender,address,disease,doctor_id) VALUES (6,'hansha',55,'female','vapi','diabetes',22);
use storedp;
