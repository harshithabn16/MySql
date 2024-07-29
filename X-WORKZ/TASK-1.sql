/*CREATE 2 TABLES WITH 5 COLUMNS(5 COLUMN WHILE CREATING TABLE).
1)TABLE NAME: movie_info, bank_details
2)5 columns varchar, 2 int, 2 bigint, 1 boolean
3)ADD 5 COLUMNS USING ALTER
4)RENAME 5 COLUMNS USING ALTER
5)INSERT 10 DATA FOR EACH TABLE.
6)UPDATE 10 DATA FOR DIFFERENT COLUMNS.
7)DELETE 3 DATA FOR DIFFERENT COLUMNS.
8)FETCH DATA USING WHERE, AND, OR,IN, NOT IN. */





CREATE DATABASE todaysTask;
use todaysTask;
CREATE TABLE movie_info(id int ,m_name varchar(20),m_time varchar(10),m_mode varchar(20),m_hero_name varchar(20),
m_heroen_name varchar(20),m_ticket bigint,m_cost int,m_director_sal bigint,m_start boolean);

ALTER TABLE movie_info ADD COLUMN m_hero_sal bigint;
ALTER TABLE movie_info ADD COLUMN m_heroien_sal bigint;
ALTER TABLE movie_info ADD COLUMN m_producer_add varchar(20),ADD COLUMN m_producer_sal bigint,ADD COLUMN m_hero_add varchar(20);

desc movie_info;
SELECT * FROM MOVIE_INFO;
ALTER TABLE MOVIE_INFO RENAME COLUMN M_COST TO M_COST_PRICE;
ALTER TABLE MOVIE_INFO RENAME COLUMN M_TICKET TO M_TICKETS;
ALTER TABLE MOVIE_INFO RENAME COLUMN M_HERO_SAL TO M_HERO_SALARY;
ALTER TABLE MOVIE_INFO RENAME COLUMN M_HEROIEN_SAL TO M_HEROIEN_SALARY;
ALTER TABLE MOVIE_INFO RENAME COLUMN M_TIME TO M_TIMING;
ALTER TABLE MOVIE_INFO RENAME COLUMN M_PRODUCER_ADD TO M_DIRECTOR_NAME;
ALTER TABLE MOVIE_INFO MODIFY COLUMN M_NAME VARCHAR(40);

INSERT INTO MOVIE_INFO VALUES(1,'YUVA','2 PM','ONLINE','YUVA RAJAKUMAR','SAPTAMI GOWDA',5,200,80000,TRUE,50000,40000,'VIJAY KIRAGANDUR','SANTHOSH ANANDDRAM',100000,'BENGLURU');

INSERT INTO MOVIE_INFO VALUES(2,'AVATHAR PURUSHA-2','6 PM','OFFLINE','SHARAN','ASHIKA RANGANTH',10,250,90000,TRUE,70000,80000,'SAI KUMAR','SIMPLE SUNI',100000,'SHIVAMOGA');

INSERT INTO MOVIE_INFO VALUES(3,'KGF: Chapter 1','12 AM','OFFLINE','Yash','Srinidhi Shetty',20,400,800000,TRUE,500000,900000,'Vijay Kiragandur','Prashanth Neel',100000,'BENGLURU');

INSERT INTO MOVIE_INFO VALUES(4,'Raajakumara','12 AM','OFFLINE','PUNITH RAJAKUMAR','Priya Anand ',30,500,50000,TRUE,60000,77000,'VIJAY KIRAGANDUR','SANTHOSH ANANDDRAM',1800000,'BENGLURU');

INSERT INTO MOVIE_INFO VALUES(5,'Arjun Reddy','2 PM','ONLINE','Vijay Deverakonda','Shalini Pandey',5,200,80000,FALSE,50000,40000,'Pranay Reddy Vanga','Sandeep Reddy Vanga',1500000,'HYDRABAD');

INSERT INTO MOVIE_INFO VALUES(6,'Ala Vaikunthapurramuloo','12 PM','OFFLINE','Allu Arjun','Pooja Hegde',12,2600,90000,TRUE,50000,40000,'Allu Aravind','Trivikram Sriniva',180000,'HYDRABAD');

INSERT INTO MOVIE_INFO VALUES(7,'Kirik Party','12 AM','OFFLINE','Rakshit Shetty','Rashmika Mandanna',15,300,90000,TRUE,850000,490000,'Rakshit Shetty','Rishab Shetty',600000,'MANGALURU');

INSERT INTO MOVIE_INFO VALUES(8,' Rangasthalam','2 PM','ONLINE','Ram Charan','Samantha Akkineni',7,100,60000,FALSE,30000,40000,'Naveen Yer','SUKUMAR',900000,'HYDRABAD');

INSERT INTO MOVIE_INFO VALUES(9,'Maharshi','12 AM','OFFLINE','Mahesh Babu','Pooja Hegde',45,300,90000,TRUE,80000,110000,'Dil Raju','Vamshi Paidipally',300000,'HYDRABAD');

INSERT INTO MOVIE_INFO VALUES(10,'Jersey','6 PM','ONLINE','Nani','Shraddha Srinath',30,300,850000,TRUE,90000,120000,'Suryadevar','Gowtam Tinnanuri',200000,'HYDRABAD');

CREATE TABLE BANCK_DETAILS(ID INT,B_NAME VARCHAR(20),B_BRANCH VARCHAR(20),B_ADD VARCHAR(30),B_ACCHOLDER_NAME VARCHAR(30),B_ACCHOLDER_ADD VARCHAR(30),B_BALANCE BIGINT,B_ACC_NO BIGINT,B_BRANCH_NO INT,B_OPEN BOOLEAN);
DESC BANCK_DETAILS;
SELECT * FROM BANCK_DETAILS;
ALTER TABLE BANCK_DETAILS ADD COLUMN B_HELPLINE_NO bigint;
ALTER TABLE BANCK_DETAILS ADD COLUMN B_HOLDER_ADHAR_NO bigint;
ALTER TABLE BANCK_DETAILS ADD COLUMN B_HOLDER_DEBITCARD_NO BIGINT;
ALTER TABLE BANCK_DETAILS ADD COLUMN B_IFSC_CODE VARCHAR(20),ADD COLUMN B_HOLDER_NOMINI varchar(20);

ALTER TABLE BANCK_DETAILS RENAME COLUMN B_HELPLINE_NO TO B_HELP_LINE_NO;
ALTER TABLE BANCK_DETAILS RENAME COLUMN B_HOLDER_ADHAR_NO TO B_HOLDER_ADHARNO;
ALTER TABLE BANCK_DETAILS RENAME COLUMN B_BRANCH TO B_BRANCH_NAME;
ALTER TABLE BANCK_DETAILS RENAME COLUMN B_HOLDER_NOMINI TO B_HOLDER_NOMINY;
ALTER TABLE BANCK_DETAILS RENAME COLUMN B_HOLDER_DEBITCARD_NO TO B_HOLDER_DEBITCARDNO;


INSERT INTO BANCK_DETAILS VALUES(1,'KARNATAKA','TVK','TUMKUR','HARSHITHA','BHUVANAHALLI',100,12234768,45,TRUE,111999,789856789876,789789,'KARB3456','NEHA');

INSERT INTO BANCK_DETAILS VALUES(2,'SBI','TUMKUR','TUMKUR','HARINI','MYSORE',200,12434768,45,FALSE,111999,789856789876,789789,'KARB3456','MANASA');

INSERT INTO BANCK_DETAILS VALUES(3,'KENARA','BENGLURU','BENGALURU','MADHURA','BENGLURU',450,23234768,45,TRUE,111999,789856789876,789789,'KARB3456','KEERTHI');

INSERT INTO BANCK_DETAILS VALUES(4,'KARNATAKA','MYSORE','MYSORE','KAMALA','RAJJAJINAGR',300,452234768,45,TRUE,111999,789856789876,789789,'KARB3456','KUSHALA');

INSERT INTO BANCK_DETAILS VALUES(5,'HDFC','MYSORE','HASSAN','MANASA','MYSORE',100,12234768,45,FALSE,111999,789856789876,789789,'KARB3456','SOWMYA');

INSERT INTO BANCK_DETAILS VALUES(6,'KENARA','TIPTUR','TUMKUR','HARSHITHA','CHAMARAJANAGAR',100,12234768,45,TRUE,111999,789856789876,789789,'KARB3456','BHANU');

INSERT INTO BANCK_DETAILS VALUES(7,'SBI','TIPTUR','TUMKUR','LAHARI','CHIKAMANGALURU',100,12234768,45,TRUE,111999,789856789876,789789,'KARB3456','SPOORTHY');

INSERT INTO BANCK_DETAILS VALUES(8,'SBI','TURUVEKERE','TUMKUR','NISHCHITHA','BIRUR',100,12234768,45,FALSE,111999,789856789876,789789,'KARB3456','ASHWINI');

INSERT INTO BANCK_DETAILS VALUES(9,'DCC','TVK','TUMKUR','NEHA','ARSIKERE',100,12234768,45,TRUE,111999,789856789876,789789,'KARB3456','NEHA');

INSERT INTO BANCK_DETAILS VALUES(10,'KARNATAKA','GANSI','HASSAN','HARSHITHA','TUMKUR',100,12234768,45,TRUE,111999,789856789876,789789,'KARB3456','NIDHI');

UPDATE BANCK_DETAILS SET B_ADD='BENGALURU' WHERE ID=2 
UPDATE BANCK_DETAILS SET B_ADD='MANGALURU' WHERE ID=10 
UPDATE BANCK_DETAILS SET B_ADD='BALARI' WHERE ID=4 
UPDATE BANCK_DETAILS SET B_ADD='KALABURGI' WHERE ID=7 
UPDATE BANCK_DETAILS SET B_ADD='BENGALURU' WHERE ID=8 
UPDATE BANCK_DETAILS SET B_ADD='KALABURGI' WHERE ID=3 
UPDATE BANCK_DETAILS SET B_ADD='BENGALURU' WHERE ID=9
UPDATE BANCK_DETAILS SET B_ADD='MYSORE' WHERE ID=1 
UPDATE BANCK_DETAILS SET B_ADD='CHIKAMANGALURU' WHERE ID=6 
UPDATE BANCK_DETAILS SET B_ADD='BENGALURU' WHERE ID=5

UPDATE MOVIE_INFO SET M_TIMING='2 PM' WHERE ID=3
UPDATE MOVIE_INFO SET M_TIMING='1 PM' WHERE ID=8
UPDATE MOVIE_INFO SET M_TIMING='2 PM' WHERE ID=9
UPDATE MOVIE_INFO SET M_TIMING='8 AM' WHERE ID=6
UPDATE MOVIE_INFO SET M_TIMING='8 PM' WHERE ID=5
UPDATE MOVIE_INFO SET M_TIMING='2 PM' WHERE ID=7
UPDATE MOVIE_INFO SET M_TIMING='9 PM' WHERE ID=4
UPDATE MOVIE_INFO SET M_TIMING='12 PM' WHERE ID=2
UPDATE MOVIE_INFO SET M_TIMING='2 PM' WHERE ID=3
UPDATE MOVIE_INFO SET M_TIMING='12 PM' WHERE ID=1


DELETE FROM BANCK_DETAILS WHERE B_OPEN=0;
ROLLBACK;
DELETE FROM BANCK_DETAILS WHERE B_OPEN=1;
DELETE FROM BANCK_DETAILS WHERE B_OPEN=0;

DELETE FROM MOVIE_INFO WHERE M_TICKETS=5;

DELETE FROM MOVIE_INFO WHERE M_TICKETS=10;

DELETE FROM MOVIE_INFO WHERE M_TICKETS=12;

SELECT * FROM MOVIE_INFO ;
SELECT * FROM BANCK_DETAILS;

SELECT * FROM BANCK_DETAILS WHERE B_ADD='TUMKUR' AND B_NAME='SBI';

SELECT * FROM BANCK_DETAILS WHERE B_BALANCE=100 OR B_OPEN=1;

SELECT * FROM MOVIE_INFO WHERE M_TICKETS=20 AND M_START=1;

SELECT * FROM MOVIE_INFO WHERE M_TICKETS=15 OR M_START=0;

SELECT  M_NAME,M_TIMING FROM MOVIE_INFO WHERE M_NAME IN ('RAJAKUMARA');

SELECT  M_NAME,M_TIMING FROM MOVIE_INFO WHERE M_NAME NOT IN ('RAJAKUMARA');
