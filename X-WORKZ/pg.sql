CREATE DATABASE pg;
USE pg;
CREATE TABLE student1(ID int,SerialNo int,s_name varchar(20),s_address varchar(20),s_pincode bigint(30),s_adharNo bigint(30),S_rooleNo varchar(10),IFSC_code varchar(10));
desc student1;

CREATE TABLE  student(ID int,SerialNo int,sname varchar(20),saddress varchar(20),spincode bigint(30),sadharNo bigint(30),SrooleNo varchar(10),IFSC_code varchar(10));
desc seller;

CREATE TABLE department(ID int,branchNo int,dep_name varchar(20),dep_add varchar(20),dep_code bigint(30),dep_NoOfStaffs bigint(30),dep_No varchar(10),total_dep varchar(10)); 
desc department;

CREATE TABLE department1(ID int,branchNo int,dep1_name varchar(20),dep1_add varchar(20),dep1_code bigint(30),dep1_NoOfStaffs bigint(30),dep1_No varchar(10),total_dep1 varchar(10)); 
desc department1;

CREATE TABLE person(ID int,SerialNo int,p_name varchar(20),p_address varchar(20),p_pincode bigint(30),p_adharNo bigint(30),p_rooleNo varchar(10),IFSC_code varchar(10));
desc person;

CREATE TABLE branch(ID int,SerialNo int,branch_name varchar(20),branch_address varchar(20),branch_pincode bigint(30),branch_noOfStd bigint(30),branch_rooleNo varchar(10),IFSC_code varchar(10));
desc branch;

CREATE TABLE computer(ID int,SerialNo int,c_name varchar(20),c_address varchar(20),c_pincode bigint(30),c_manfDate bigint(30),c_HardDisk varchar(10),c_RAM varchar(10));
desc computer;
