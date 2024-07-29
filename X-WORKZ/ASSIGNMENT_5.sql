/*1) CREATE DATA BASE RTO
2) CREATE 4 TABLES (
LLR_INFO, LLR_TEST_INFO, DRIVING_LICENCE_INFO, DRIVING_LICENSE_TEST_INFO WITH 10 COLUMNS.)
3) LLR_INFO : LLR_ID (PRIMARY KEY)
4) LLR_TEST_INFO: LLR_ID(FOREIGN_KEY), TEST_ID(PRIMARY_KEY)
5) DRIVING_LICENCE_INFO : DL_ID(PRIMARY KEY), TEST_ID(FOREIGN KEY), LLR_ID FOREIGN KEY
6) DRIVING_LICENSE_TEST_INFO : DL_ID(FOREIGN KEY)

7)INSERT 20 DATA FOR EACH TABLE.
8)WRITE AN QUERY IF THE DATA IS PRESENT UPDATE THE COLUMN IF NOT INSERT USING ON DUPLICATE KEY.
9)WRITE AN QUERY USING REPLACE INTO IF DATA PRESENT REPLACE OR ELSE INSERT NEW ROW FOR ALL TABLES.*/



CREATE DATABASE RTO;
USE RTO;

CREATE TABLE LLR_INFO (
    LLR_ID INT PRIMARY KEY,
    NAME VARCHAR(50),
    DOB DATE,
    ADDRESS VARCHAR(100),
    CONTACT_NUMBER VARCHAR(15),
    EMAIL VARCHAR(50),
    GENDER CHAR(1),
    BLOOD_GROUP VARCHAR(3),
    ISSUE_DATE DATE,
    EXPIRY_DATE DATE
);

CREATE TABLE LLR_TEST_INFO (
    LLR_ID INT,
    TEST_ID INT PRIMARY KEY,
    TEST_DATE DATE,
    RESULT VARCHAR(10),
    SCORE INT,
    REMARKS VARCHAR(100),
    EXAMINER_NAME VARCHAR(50),
    TEST_CENTER VARCHAR(50),
    NEXT_TEST_DATE DATE,
    FOREIGN KEY (LLR_ID) REFERENCES LLR_INFO(LLR_ID)
);

CREATE TABLE DRIVING_LICENCE_INFO (
    DL_ID INT PRIMARY KEY,
    TEST_ID INT,
    LLR_ID INT,
    NAME VARCHAR(50),
    DOB DATE,
    ADDRESS VARCHAR(100),
    CONTACT_NUMBER VARCHAR(15),
    ISSUE_DATE DATE,
    EXPIRY_DATE DATE,
    LICENSE_TYPE VARCHAR(20),
    FOREIGN KEY (TEST_ID) REFERENCES LLR_TEST_INFO(TEST_ID),
    FOREIGN KEY (LLR_ID) REFERENCES LLR_INFO(LLR_ID)
);

CREATE TABLE DRIVING_LICENSE_TEST_INFO (
    DL_ID INT,
    TEST_DATE DATE,
    RESULT VARCHAR(10),
    SCORE INT,
    REMARKS VARCHAR(100),
    EXAMINER_NAME VARCHAR(50),
    TEST_CENTER VARCHAR(50),
    NEXT_TEST_DATE DATE,
    FOREIGN KEY (DL_ID) REFERENCES DRIVING_LICENCE_INFO(DL_ID)
);

INSERT INTO LLR_INFO (LLR_ID, NAME, DOB, ADDRESS, CONTACT_NUMBER, EMAIL, GENDER, BLOOD_GROUP, ISSUE_DATE, EXPIRY_DATE)
VALUES
(1, 'John Doe', '1985-05-20', '123 Main St, Cityville', '555-1234', 'johndoe@example.com', 'M', 'O+', '2022-01-15', '2025-01-15'),
(2, 'Jane Smith', '1990-08-15', '456 Oak St, Townsville', '555-5678', 'janesmith@example.com', 'F', 'A+', '2022-01-20', '2025-01-20'),
(3, 'Alice Johnson', '1982-11-22', '789 Pine St, Villageville', '555-9012', 'alicej@example.com', 'F', 'B+', '2022-01-25', '2025-01-25'),
(4, 'Bob Brown', '1975-06-30', '321 Maple St, Hamletville', '555-3456', 'bobb@example.com', 'M', 'AB+', '2022-02-01', '2025-02-01'),
(5, 'Charlie Davis', '1995-12-10', '654 Birch St, Citytown', '555-7890', 'charlied@example.com', 'M', 'O-', '2022-02-10', '2025-02-10'),
(6, 'Diana Evans', '1988-04-15', '987 Cedar St, Towntop', '555-2345', 'dianae@example.com', 'F', 'A-', '2022-02-15', '2025-02-15'),
(7, 'Edward Harris', '1979-09-28', '159 Spruce St, Villagetop', '555-6789', 'edwardh@example.com', 'M', 'B-', '2022-02-20', '2025-02-20'),
(8, 'Fiona Lee', '1983-03-19', '357 Fir St, Hamletop', '555-1122', 'fional@example.com', 'F', 'AB-', '2022-02-25', '2025-02-25'),
(9, 'George Martinez', '1992-07-23', '753 Elm St, Citybottom', '555-3344', 'georgem@example.com', 'M', 'O+', '2022-03-01', '2025-03-01'),
(10, 'Helen Scott', '1981-10-05', '951 Willow St, Townbottom', '555-5566', 'helens@example.com', 'F', 'A+', '2022-03-05', '2025-03-05'),
(11, 'Ian King', '1987-02-16', '135 Poplar St, Villagebottom', '555-7788', 'iank@example.com', 'M', 'B+', '2022-03-10', '2025-03-10'),
(12, 'Julia Wright', '1994-05-25', '246 Redwood St, Hamletbottom', '555-9900', 'juliaw@example.com', 'F', 'AB+', '2022-03-15', '2025-03-15'),
(13, 'Kevin Clark', '1978-08-12', '369 Hemlock St, Citycenter', '555-2233', 'kevinc@example.com', 'M', 'O-', '2022-03-20', '2025-03-20'),
(14, 'Laura Walker', '1986-11-07', '481 Dogwood St, Towncenter', '555-4455', 'lauraw@example.com', 'F', 'A-', '2022-03-25', '2025-03-25'),
(15, 'Michael Young', '1991-01-29', '592 Alder St, Villagecenter', '555-6677', 'michaely@example.com', 'M', 'B-', '2022-03-30', '2025-03-30'),
(16, 'Nancy Turner', '1984-07-14', '713 Beech St, Hamletcenter', '555-8899', 'nancyt@example.com', 'F', 'AB-', '2022-04-01', '2025-04-01'),
(17, 'Oscar Green', '1993-10-03', '824 Aspen St, Cityeast', '555-1010', 'oscarg@example.com', 'M', 'O+', '2022-04-05', '2025-04-05'),
(18, 'Paula Moore', '1977-12-19', '935 Magnolia St, Towneast', '555-2121', 'paulam@example.com', 'F', 'A+', '2022-04-10', '2025-04-10'),
(19, 'Quentin Ramirez', '1989-03-09', '104 Walnut St, Villageeast', '555-3232', 'quentinr@example.com', 'M', 'B+', '2022-04-15', '2025-04-15'),
(20, 'Rachel Lewis', '1996-06-18', '215 Cherry St, Hamleteast', '555-4343', 'rachell@example.com', 'F', 'AB+', '2022-04-20', '2025-04-20');

SELECT * FROM LLR_INFO;

INSERT INTO LLR_TEST_INFO (LLR_ID, TEST_ID, TEST_DATE, RESULT, SCORE, REMARKS, EXAMINER_NAME, TEST_CENTER, NEXT_TEST_DATE)
VALUES
(1, 101, '2022-02-10', 'Pass', 85, 'Good performance', 'Examiner A', 'Cityville Center', NULL),
(2, 102, '2022-02-15', 'Fail', 45, 'Needs improvement', 'Examiner B', 'Townsville Center', '2022-03-15'),
(3, 103, '2022-02-20', 'Pass', 88, 'Excellent', 'Examiner C', 'Villageville Center', NULL),
(4, 104, '2022-02-25', 'Pass', 75, 'Satisfactory', 'Examiner D', 'Hamletville Center', NULL),
(5, 105, '2022-03-01', 'Pass', 82, 'Good', 'Examiner E', 'Citytown Center', NULL),
(6, 106, '2022-03-05', 'Fail', 50, 'Needs improvement', 'Examiner F', 'Towntop Center', '2022-04-05'),
(7, 107, '2022-03-10', 'Pass', 90, 'Excellent', 'Examiner G', 'Villagetop Center', NULL),
(8, 108, '2022-03-15', 'Pass', 80, 'Good', 'Examiner H', 'Hamletop Center', NULL),
(9, 109, '2022-03-20', 'Fail', 40, 'Poor', 'Examiner I', 'Citybottom Center', '2022-04-20'),
(10, 110, '2022-03-25', 'Pass', 85, 'Good', 'Examiner J', 'Townbottom Center', NULL),
(11, 111, '2022-03-25', 'Pass', 70, 'Fair', 'Examiner K', 'Villagebottom Center', NULL),
(12, 112, '2022-03-30', 'Fail', 35, 'Needs improvement', 'Examiner L', 'Hamletbottom Center', '2022-04-30'),
(13, 113, '2022-04-05', 'Pass', 80, 'Good', 'Examiner M', 'Citycenter Center', NULL),
(14, 114, '2022-04-10', 'Pass', 75, 'Satisfactory', 'Examiner N', 'Towncenter Center', NULL),
(15, 115, '2022-04-15', 'Fail', 45, 'Needs improvement', 'Examiner O', 'Villagecenter Center', '2022-05-15'),
(16, 116, '2022-04-20', 'Pass', 85, 'Good', 'Examiner P', 'Hamletcenter Center', NULL),
(17, 117, '2022-04-25', 'Pass', 90, 'Excellent', 'Examiner Q', 'Cityeast Center', NULL),
(18, 118, '2022-04-30', 'Pass', 80, 'Good', 'Examiner R', 'Towneast Center', NULL),
(19, 119, '2022-05-05', 'Fail', 55, 'Needs improvement', 'Examiner S', 'Villageeast Center', '2022-06-05'),
(20, 120, '2022-05-10', 'Pass', 88, 'Excellent', 'Examiner T', 'Hamleteast Center', NULL);

SELECT * FROM LLR_TEST_INFO;


INSERT INTO DRIVING_LICENCE_INFO (DL_ID, TEST_ID, LLR_ID, NAME, DOB, ADDRESS, CONTACT_NUMBER, ISSUE_DATE, EXPIRY_DATE, LICENSE_TYPE)
VALUES
(1, 101, 1, 'John Doe', '1985-05-20', '123 Main St, Cityville', '555-1234', '2022-02-20', '2032-02-20', 'Car'),
(2, 102, 2, 'Jane Smith', '1990-08-15', '456 Oak St, Townsville', '555-5678', '2022-03-20', '2032-03-20', 'Motorcycle'),
(3, 103, 3, 'Alice Johnson', '1982-11-22', '789 Pine St, Villageville', '555-9012', '2022-04-20', '2032-04-20', 'Truck'),
(4, 104, 4, 'Bob Brown', '1975-06-30', '321 Maple St, Hamletville', '555-3456', '2022-05-20', '2032-05-20', 'Bus'),
(5, 105, 5, 'Charlie Davis', '1995-12-10', '654 Birch St, Citytown', '555-7890', '2022-06-20', '2032-06-20', 'Car'),
(6, 106, 6, 'Diana Evans', '1988-04-15', '987 Cedar St, Towntop', '555-2345', '2022-07-20', '2032-07-20', 'Motorcycle'),
(7, 107, 7, 'Edward Harris', '1979-09-28', '159 Spruce St, Villagetop', '555-6789', '2022-08-20', '2032-08-20', 'Truck'),
(8, 108, 8, 'Fiona Lee', '1983-03-19', '357 Fir St, Hamletop', '555-1122', '2022-09-20', '2032-09-20', 'Bus'),
(9, 109, 9, 'George Martinez', '1992-07-23', '753 Elm St, Citybottom', '555-3344', '2022-10-20', '2032-10-20', 'Car'),
(10, 110, 10, 'Helen Scott', '1981-10-05', '951 Willow St, Townbottom', '555-5566', '2022-11-20', '2032-11-20', 'Motorcycle'),
(11, 111, 11, 'Ian King', '1987-02-16', '135 Poplar St, Villagebottom', '555-7788', '2022-03-10', '2032-03-10', 'Car'),
(12, 112, 12, 'Julia Wright', '1994-05-25', '246 Redwood St, Hamletbottom', '555-9900', '2022-03-15', '2032-03-15', 'Motorcycle'),
(13, 113, 13, 'Kevin Clark', '1978-08-12', '369 Hemlock St, Citycenter', '555-2233', '2022-03-20', '2032-03-20', 'Truck'),
(14, 114, 14, 'Laura Walker', '1986-11-07', '481 Dogwood St, Towncenter', '555-4455', '2022-03-25', '2032-03-25', 'Car'),
(15, 115, 15, 'Michael Young', '1991-01-29', '592 Alder St, Villagecenter', '555-6677', '2022-03-30', '2032-03-30', 'Bus'),
(16, 116, 16, 'Nancy Turner', '1984-07-14', '713 Beech St, Hamletcenter', '555-8899', '2022-04-01', '2032-04-01', 'Car'),
(17, 117, 17, 'Oscar Green', '1993-10-03', '824 Aspen St, Cityeast', '555-1010', '2022-04-05', '2032-04-05', 'Motorcycle'),
(18, 118, 18, 'Paula Moore', '1977-12-19', '935 Magnolia St, Towneast', '555-2121', '2022-04-10', '2032-04-10', 'Truck'),
(19, 119, 19, 'Quentin Ramirez', '1989-03-09', '104 Walnut St, Villageeast', '555-3232', '2022-04-15', '2032-04-15', 'Bus'),
(20, 120, 20, 'Rachel Lewis', '1996-06-18', '215 Cherry St, Hamleteast', '555-4343', '2022-04-20', '2032-04-20', 'Car');

SELECT * FROM DRIVING_LICENCE_INFO;

INSERT INTO DRIVING_LICENSE_TEST_INFO (DL_ID, TEST_DATE, RESULT, SCORE, REMARKS, EXAMINER_NAME, TEST_CENTER, NEXT_TEST_DATE)
VALUES
(1, '2022-02-20', 'Pass', 85, 'Good performance', 'Examiner A', 'Cityville Center', NULL),
(2, '2022-03-20', 'Fail', 45, 'Needs improvement', 'Examiner B', 'Townsville Center', '2022-04-20'),
(3, '2022-04-20', 'Pass', 88, 'Excellent', 'Examiner C', 'Villageville Center', NULL),
(4, '2022-05-20', 'Pass', 75, 'Satisfactory', 'Examiner D', 'Hamletville Center', NULL),
(5, '2022-06-20', 'Pass', 82, 'Good', 'Examiner E', 'Citytown Center', NULL),
(6, '2022-07-20', 'Fail', 50, 'Needs improvement', 'Examiner F', 'Towntop Center', '2022-08-20'),
(7, '2022-08-20', 'Pass', 90, 'Excellent', 'Examiner G', 'Villagetop Center', NULL),
(8, '2022-09-20', 'Pass', 80, 'Good', 'Examiner H', 'Hamletop Center', NULL),
(9, '2022-10-20', 'Fail', 40, 'Poor', 'Examiner I', 'Citybottom Center', '2022-11-20'),
(10, '2022-11-20', 'Pass', 85, 'Good', 'Examiner J', 'Townbottom Center', NULL),
(11, '2022-03-10', 'Pass', 70, 'Fair', 'Examiner K', 'Villagebottom Center', NULL),
(12, '2022-03-15', 'Fail', 35, 'Needs improvement', 'Examiner L', 'Hamletbottom Center', '2022-04-15'),
(13, '2022-03-20', 'Pass', 80, 'Good', 'Examiner M', 'Citycenter Center', NULL),
(14, '2022-03-25', 'Pass', 75, 'Satisfactory', 'Examiner N', 'Towncenter Center', NULL),
(15, '2022-03-30', 'Fail', 45, 'Needs improvement', 'Examiner O', 'Villagecenter Center', '2022-04-30'),
(16, '2022-04-01', 'Pass', 85, 'Good', 'Examiner P', 'Hamletcenter Center', NULL),
(17, '2022-04-05', 'Pass', 90, 'Excellent', 'Examiner Q', 'Cityeast Center', NULL),
(18, '2022-04-10', 'Pass', 80, 'Good', 'Examiner R', 'Towneast Center', NULL),
(19, '2022-04-15', 'Fail', 55, 'Needs improvement', 'Examiner S', 'Villageeast Center', '2022-05-15'),
(20, '2022-04-20', 'Pass', 88, 'Excellent', 'Examiner T', 'Hamleteast Center', NULL);

SELECT * FROM DRIVING_LICENSE_TEST_INFO;

INSERT INTO LLR_INFO (LLR_ID, NAME, DOB, ADDRESS, CONTACT_NUMBER, EMAIL, GENDER, BLOOD_GROUP, ISSUE_DATE, EXPIRY_DATE)
VALUES (1, 'John Doe', '1985-05-20', '123 Main St, Cityville', '555-1234', 'johndoe@example.com', 'M', 'O+', '2022-01-15', '2025-01-15')
ON DUPLICATE KEY UPDATE
NAME=VALUES(NAME), DOB=VALUES(DOB), ADDRESS=VALUES(ADDRESS), CONTACT_NUMBER=VALUES(CONTACT_NUMBER), EMAIL=VALUES(EMAIL), GENDER=VALUES(GENDER), BLOOD_GROUP=VALUES(BLOOD_GROUP), ISSUE_DATE=VALUES(ISSUE_DATE), EXPIRY_DATE=VALUES(EXPIRY_DATE);

INSERT INTO LLR_TEST_INFO (LLR_ID, TEST_ID, TEST_DATE, RESULT, SCORE, REMARKS, EXAMINER_NAME, TEST_CENTER, NEXT_TEST_DATE)
VALUES (1, 101, '2022-01-20', 'Pass', 85, 'Good performance', 'Examiner A', 'Cityville Center', NULL)
ON DUPLICATE KEY UPDATE
TEST_DATE=VALUES(TEST_DATE), RESULT=VALUES(RESULT), SCORE=VALUES(SCORE), REMARKS=VALUES(REMARKS), EXAMINER_NAME=VALUES(EXAMINER_NAME), TEST_CENTER=VALUES(TEST_CENTER), NEXT_TEST_DATE=VALUES(NEXT_TEST_DATE);

INSERT INTO DRIVING_LICENCE_INFO (DL_ID, TEST_ID, LLR_ID, NAME, DOB, ADDRESS, CONTACT_NUMBER, ISSUE_DATE, EXPIRY_DATE, LICENSE_TYPE)
VALUES (1, 101, 1, 'John Doe', '1985-05-20', '123 Main St, Cityville', '555-1234', '2022-02-20', '2032-02-20', 'Car')
ON DUPLICATE KEY UPDATE
TEST_ID=VALUES(TEST_ID), LLR_ID=VALUES(LLR_ID), NAME=VALUES(NAME), DOB=VALUES(DOB), ADDRESS=VALUES(ADDRESS), CONTACT_NUMBER=VALUES(CONTACT_NUMBER), ISSUE_DATE=VALUES(ISSUE_DATE), EXPIRY_DATE=VALUES(EXPIRY_DATE), LICENSE_TYPE=VALUES(LICENSE_TYPE);


INSERT INTO DRIVING_LICENSE_TEST_INFO (DL_ID, TEST_DATE, RESULT, SCORE, REMARKS, EXAMINER_NAME, TEST_CENTER, NEXT_TEST_DATE)
VALUES (1, '2022-02-20', 'Pass', 85, 'Good performance', 'Examiner A', 'Cityville Center', NULL)
ON DUPLICATE KEY UPDATE
TEST_DATE=VALUES(TEST_DATE), RESULT=VALUES(RESULT), SCORE=VALUES(SCORE), REMARKS=VALUES(REMARKS), EXAMINER_NAME=VALUES(EXAMINER_NAME), TEST_CENTER=VALUES(TEST_CENTER), NEXT_TEST_DATE=VALUES(NEXT_TEST_DATE);

