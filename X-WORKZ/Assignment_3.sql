/*1)CREATE 2 (state_info, scam_info) with 10 columns
2)ADD 5 Columns using alter command.
3)rename 5 columns using alter command.
4)change datatype for 5 columns.
5)Insert 20 data for each table.
6)update 10 data for different columns for each table.
7)delete 3 data from each table.
8)Fetch data using AND OR IN NOTIN.*/

CREATE DATABASE assignment3;
use assignment3;
CREATE TABLE state_info(id int ,s_name varchar(20),s_famous_place varchar(10),s_maintanance varchar(20),s_cm_name varchar(20),
s_dis_name varchar(20),s_papulation bigint,s_id int,s_pincode bigint,s_present boolean);

ALTER TABLE state_info ADD COLUMN s_dis_pincode bigint;
ALTER TABLE state_info ADD COLUMN s_serial_no bigint;
ALTER TABLE state_info ADD COLUMN s_d_t_name varchar(20),ADD COLUMN s_papulation_name bigint,ADD COLUMN s_tourist_place varchar(20);

desc state_info;
SELECT * FROM state_info;
ALTER TABLE state_info RENAME COLUMN s_famous_place TO s_famous_places;
ALTER TABLE state_info RENAME COLUMN s_maintanance TO s_maintanances;
ALTER TABLE state_info RENAME COLUMN s_pincode TO s_pincodes;
ALTER TABLE state_info RENAME COLUMN s_dis_pincode TO s_dis_pincodes;
ALTER TABLE state_info RENAME COLUMN s_serial_no TO s_serial_No;

ALTER TABLE state_info MODIFY COLUMN s_papulation_name varchar(20);
ALTER TABLE state_info MODIFY COLUMN s_famous_places varchar(30);

INSERT INTO state_info VALUES(1,'Karnataka','Hampi','good','Sidaramaya','Shivamoga',800000,8,76897,TRUE,57986,5555,'Sagara','Harshitha','JogFalls');

INSERT INTO state_info VALUES(2,'Karnataka','Beluru','good','Hassan','Beluru',90000,3,6457,TRUE,87323,9823,'Beluru','Megha','Tempale');

INSERT INTO state_info VALUES(3,'Karnataka','Patadakallu','good','Bagalakotte','Bagalakote',87390,5,4687,TRUE,27986,2222,'Bagalakote','Madhura','Temple');

INSERT INTO state_info VALUES(4,'Hydrabad','Tirupati','good','Tirumala','Tirupati',33452,8,87456,TRUE,65000,23400,'Tirumala','Rekha','HiilStration');

INSERT INTO state_info VALUES(5,'Hydrabad','Charminar','good','Hydrabad','Hydrabad',33952,9,97456,TRUE,68000,43400,'Hydrabad','Neha','Tempale');

INSERT INTO state_info VALUES(6,'Karnataka','Devaramane','good','Chikamagaluru','Mudgere',23952,2,47456,TRUE,878000,92400,'Karanataka','Kamala','Hill');

INSERT INTO state_info VALUES(7,'Hydrabad','Charminar','good','Hydrabad','Hydrabad',33952,9,97456,TRUE,68000,43400,'Hydrabad','Neha','Tempale');

INSERT INTO state_info VALUES(8,'Karnataka','Beluru','good','Hassan','Beluru',90000,3,6457,TRUE,87323,9823,'Beluru','Megha','Tempale');

INSERT INTO state_info VALUES(9,'Karnataka','Patadakallu','good','Bagalakotte','Bagalakote',87390,5,4687,TRUE,27986,2222,'Bagalakote','Madhura','Temple');

INSERT INTO state_info VALUES(10,'Karnataka','Mulayanagiri','good','Chikamagaluru','Mudgere',23952,2,47456,TRUE,878000,92400,'Karanataka','Kamala','Hill');

INSERT INTO state_info VALUES(11,'Karnataka','Hampi','good','Sidaramaya','Shivamoga',800000,8,76897,TRUE,57986,5555,'Sagara','Harshitha','JogFalls');

INSERT INTO state_info VALUES(12,'Karnataka','Beluru','good','Hassan','Beluru',90000,3,6457,TRUE,87323,9823,'Beluru','Megha','Tempale');

INSERT INTO state_info VALUES(13,'Karnataka','Patadakallu','good','Bagalakotte','Bagalakote',87390,5,4687,TRUE,27986,2222,'Bagalakote','Madhura','Temple');

INSERT INTO state_info VALUES(14,'Hydrabad','Tirupati','good','Tirumala','Tirupati',33452,8,87456,TRUE,65000,23400,'Tirumala','Rekha','HiilStration');

INSERT INTO state_info VALUES(15,'Hydrabad','Charminar','good','Hydrabad','Hydrabad',33952,9,97456,TRUE,68000,43400,'Hydrabad','Neha','Tempale');

INSERT INTO state_info VALUES(16,'Karnataka','Devaramane','good','Chikamagaluru','Mudgere',23952,2,47456,TRUE,878000,92400,'Karanataka','Kamala','Hill');

INSERT INTO state_info VALUES(17,'Hydrabad','Charminar','good','Hydrabad','Hydrabad',33952,9,97456,TRUE,68000,43400,'Hydrabad','Neha','Tempale');

INSERT INTO state_info VALUES(18,'Karnataka','Beluru','good','Hassan','Beluru',90000,3,6457,TRUE,87323,9823,'Beluru','Megha','Tempale');

INSERT INTO state_info VALUES(19,'Karnataka','Patadakallu','good','Bagalakotte','Bagalakote',87390,5,4687,TRUE,27986,2222,'Bagalakote','Madhura','Temple');

INSERT INTO state_info VALUES(20,'Karnataka','Mulayanagiri','good','Chikamagaluru','Mudgere',23952,2,47456,TRUE,878000,92400,'Karanataka','Kamala','Hill');

CREATE TABLE scam_info(ID INT,s_name VARCHAR(20),s_place VARCHAR(20),s_time VARCHAR(30),s_performance VARCHAR(30),s_Master_name VARCHAR(30),s_ph_no BIGINT,s_NO BIGINT,s_id INT,s_present BOOLEAN);
DESC scam_info;
SELECT * FROM scam_info;
ALTER TABLE scam_info ADD COLUMN s_phNo bigint;
ALTER TABLE scam_info ADD COLUMN s_Num bigint;
ALTER TABLE scam_info ADD COLUMN s_serial_no BIGINT;
ALTER TABLE scam_info ADD COLUMN s_person_name VARCHAR(20),ADD COLUMN s_Theaft_name varchar(20);

ALTER TABLE scam_info RENAME COLUMN s_phNo TO s_Phone_no;
ALTER TABLE scam_info RENAME COLUMN s_name TO S_Name;
ALTER TABLE scam_info RENAME COLUMN s_place TO s_Place;
ALTER TABLE scam_info RENAME COLUMN s_Num TO s_Number;
ALTER TABLE scam_info RENAME COLUMN s_time TO s_timing;


INSERT INTO scam_info VALUES(1,'Harshitha','Turuvekere','3 PM','bad','Mamatha',943567,5647,3,TRUE,111999,789856789876,789789);

INSERT INTO scam_info VALUES(2,'Rekha','Tumkur','12 PM','bad','Sahana',843567,3647,2,TRUE,23789,239856789876,87236);

INSERT INTO scam_info VALUES(3,'Manasa','Benglurur','5 PM','bad','Ganavi',23874,9384,5,TRUE,9347858,294724748,949328);

INSERT INTO scam_info VALUES(4,'Harshitha','Tiptur','3 PM','bad','Bharathi',943567,5647,3,TRUE,111999,789856789876,789789);

INSERT INTO scam_info VALUES(5,'Ganavi','Tumkur','5 PM','bad','Sangeetha',943567,5647,3,TRUE,111999,789856789876,789789);

INSERT INTO scam_info VALUES(6,'Pooja','Bhdravthi','9 PM','bad','Ranjitha',993567,5847,3,TRUE,1122999,249856789876,989789);

INSERT INTO scam_info VALUES(7,'Preethi','Bagalakote','3 PM','bad','Rekha',243567,5847,3,TRUE,191999,189856789876,889789);

INSERT INTO scam_info VALUES(8,'Spoorthi','Birur','9 AM','bad','Ashwini',143567,2647,9,TRUE,341999,989856789876,589789);

INSERT INTO scam_info VALUES(9,'Kavana','Bengaluru','3 AM','bad','Bhargavi',343567,2647,3,TRUE,111999,789856789876,789789);

INSERT INTO scam_info VALUES(10,'Harshitha','Davanagere','9 PM','bad','Mamatha',943567,5647,3,TRUE,111999,789856789876,789789);

INSERT INTO scam_info VALUES(11,'Harshitha','Turuvekere','3 PM','bad','Mamatha',943567,5647,3,TRUE,111999,789856789876,789789);

INSERT INTO scam_info VALUES(12,'Rekha','Tumkur','12 PM','bad','Sahana',843567,3647,2,TRUE,23789,239856789876,87236);

INSERT INTO scam_info VALUES(13,'Manasa','Benglurur','5 PM','bad','Ganavi',23874,9384,5,TRUE,9347858,294724748,949328);

INSERT INTO scam_info VALUES(14,'Harshitha','Tiptur','3 PM','bad','Bharathi',943567,5647,3,TRUE,111999,789856789876,789789);

INSERT INTO scam_info VALUES(15,'Ganavi','Tumkur','5 PM','bad','Sangeetha',943567,5647,3,TRUE,111999,789856789876,789789);

INSERT INTO scam_info VALUES(16,'Pooja','Bhdravthi','9 PM','bad','Ranjitha',993567,5847,3,TRUE,1122999,249856789876,989789);

INSERT INTO scam_info VALUES(17,'Preethi','Bagalakote','3 PM','bad','Rekha',243567,5847,3,TRUE,191999,189856789876,889789);

INSERT INTO scam_info VALUES(18,'Spoorthi','Birur','9 AM','bad','Ashwini',143567,2647,9,TRUE,341999,989856789876,589789);

INSERT INTO scam_info VALUES(19,'Kavana','Bengaluru','3 AM','bad','Bhargavi',343567,2647,3,TRUE,111999,789856789876,789789);

INSERT INTO scam_info VALUES(20,'Harshitha','Davanagere','9 PM','bad','Mamatha',943567,5647,3,TRUE,111999,789856789876,789789);

UPDATE scam_info SET s_timing='3 PM' WHERE ID=2 
UPDATE scam_info SET s_timing='3 PM' WHERE ID=1 
UPDATE scam_info SET s_timing='9 AM' WHERE ID=4 
UPDATE scam_info SET s_timing='3 AM' WHERE ID=7 
UPDATE scam_info SET s_timing='3 PM' WHERE ID=8 
UPDATE scam_info SET s_timing='5 PM' WHERE ID=3 
UPDATE scam_info SET s_timing='9 PM' WHERE ID=9
UPDATE scam_info SET s_timing='5 PM' WHERE ID=1 
UPDATE scam_info SET s_timing='3 PM' WHERE ID=6 
UPDATE scam_info SET s_timing='9 PM' WHERE ID=5

UPDATE state_info SET s_id=8 WHERE ID=3
UPDATE state_info SET s_id=3 WHERE ID=8
UPDATE state_info SET s_id=3 WHERE ID=9
UPDATE state_info SET s_id=8 WHERE ID=6
UPDATE state_info SET s_id=2 WHERE ID=5
UPDATE state_info SET s_id=8 WHERE ID=7
UPDATE state_info SET s_id=9 WHERE ID=4
UPDATE state_info SET s_id=9 WHERE ID=2
UPDATE state_info SET s_id=2 WHERE ID=3
UPDATE state_info SET s_id=5 WHERE ID=1


DELETE FROM state_info WHERE s_id=2;
DELETE FROM state_info WHERE s_id=9;
DELETE FROM state_info WHERE s_id=8;

DELETE FROM scam_info WHERE M_TICKETS=5;

DELETE FROM scam_info WHERE M_TICKETS=10;

DELETE FROM scam_info WHERE M_TICKETS=12;

SELECT * FROM state_info ;
SELECT * FROM scam_info;

SELECT * FROM state_info WHERE s_name='Karanata' AND s_id=8;

SELECT * FROM state_info WHERE s_name='Hydrabad' OR s_id=1;

SELECT * FROM scam_info WHERE s_timing='3 PM' AND s_id=1;

SELECT * FROM scam_info WHERE s_timing='5 PM' OR s_id=5;

SELECT  s_name FROM state_info WHERE s_name IN ('Karnataka');

SELECT  s_name FROM state_info WHERE s_name NOT IN ('Hydrabad');

SELECT  s_name FROM scam_info WHERE s_name IN ('Harshitha');

SELECT  s_name FROM scam_info WHERE s_name NOT IN ('Manasa');

  