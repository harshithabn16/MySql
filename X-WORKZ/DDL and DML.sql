CREATE DATABASE STUDENT;
USE STUDENT;
CREATE TABLE sys_config
(id INT,name VARCHAR(20),email VARCHAR(20));
SHOW TABLES; 

CREATE DATABASE rekha;
CREATE TABLE student(id INT,name VARCHAR(20),email VARCHAR(20));
desc student;


USE pg;

ALTER TABLE  branch ADD COLUMN  b_Stream varchar(20);
ALTER TABLE  branch ADD COLUMN  Std_name varchar(20);
ALTER TABLE  branch ADD COLUMN  std_id  int;
SELECT * FROM branch;

CREATE DATABASE assignment1;
USE assignment1;
CREATE TABLE employee_details(id int,emp_name varchar(20),emp_id bigint,emp_add varchar(30),Acc_no bigint(20));
desc employee_details;


CREATE TABLE airport_details(id int,emp_name varchar(20),emp_id bigint,emp_add varchar(30),Acc_no bigint(20));
desc airport_details;

/*1)ADD 5 NEW COLUMNS USING ALTER.
2)REMOVE 2 COLUMNS USING ALTER.
3)RENAME 5 COLUMNS USING ALTER.
4)CHANGE DATATYPE FOR 5 COLUMNS USING ALTER. */

ALTER TABLE employee_details  ADD COLUMN emp_phone bigint;
ALTER TABLE employee_details  ADD COLUMN emp_s_no int;
ALTER TABLE employee_details  ADD COLUMN emp_alter_name varchar(30);
ALTER TABLE airport_details  ADD COLUMN ar_no int;
ALTER TABLE airport_details  ADD COLUMN ar_name varchar(30);
ALTER TABLE airport_details  ADD COLUMN ar_address varchar(30);

ALTER TABLE airport_details  DROP COLUMN Acc_no;

ALTER TABLE airport_details  DROP COLUMN emp_add;


ALTER TABLE airport_details  RENAME COLUMN emp_name TO air_name ;

ALTER TABLE airport_details  RENAME COLUMN emp_id TO air_id ;

ALTER TABLE employee_details  RENAME COLUMN emp_add TO emp1_add ;
ALTER TABLE employee_details  RENAME COLUMN emp_name TO emp1_name ;
ALTER TABLE employee_details  RENAME COLUMN Acc_no TO emp1_acc_no ;

ALTER TABLE employee_details  MODIFY COLUMN emp1_acc_no int;

ALTER TABLE employee_details  MODIFY COLUMN emp_id int;

ALTER TABLE employee_details  MODIFY COLUMN emp_phone int;


ALTER TABLE airport_details  MODIFY COLUMN ar_no int;
ALTER TABLE airport_details  MODIFY COLUMN air_id int;

desc airport_details ;
desc employee_details;
USE assignment1;
SELECT * FROM airport_details;
SELECT * FROM employee_details;

USE pg;

DESC department;
INSERT INTO department VALUES(1,20,'CSE','TIPTUR',456,20,800,1000);
INSERT INTO department VALUES(2,30,'CSE','TIPTUR',466,30,900,1000);
INSERT INTO department VALUES(3,40,'ECE','TIPTUR',500,40,560,1000);
INSERT INTO department VALUES(4,50,'MECH','TURUVEKERE',300,50,309,1000);
INSERT INTO department VALUES(5,60,'CIVIL','TIPTUR',450,60,432,1000);
INSERT INTO department VALUES(6,70,'ISE','TIPTUR',250,70,123,1000);
INSERT INTO department VALUES(6,70,'CSE','TIPTUR',250,70,123,1000);
INSERT INTO department VALUES(6,70,'ISE','BENGLURU',250,70,567,1000);
INSERT INTO department VALUES(6,70,'ISE','TIPTUR',250,70,123,1000);

INSERT INTO department (ID,branchNo,dep_name,dep_add,dep_code,dep_NoOfStaffs,dep_No,total_dep)VALUES(6,70,'ISE','TIPTUR',250,70,123,1000);
SELECT * FROM department;

SELECT * FROM department WHERE dep_add='TURUVEKERE';
SELECT dep_name FROM department WHERE dep_code=300;

SELECT dep_name,dep_code,ID FROM department WHERE total_dep=1000;