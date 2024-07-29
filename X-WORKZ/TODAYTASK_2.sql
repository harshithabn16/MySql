CREATE DATABASE TODAYS_TASK2;
USE TODAYS_TASK2;

CREATE TABLE table1 (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    email VARCHAR(100),
    created_at TIMESTAMP
);

CREATE TABLE table2 (
    id INT PRIMARY KEY,
    title VARCHAR(100),
    description TEXT,
    author VARCHAR(50),
    published_at DATE
);

CREATE TABLE table3 (
    id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10, 2),
    quantity INT,
    added_at TIMESTAMP
);

CREATE TABLE table4 (
    id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    joined_at DATE
);

CREATE TABLE table5 (
    id INT PRIMARY KEY,
    course_name VARCHAR(100),
    instructor VARCHAR(50),
    duration INT,
    start_date DATE
);

INSERT INTO table1 (id, name, age, email, created_at) VALUES
(1, 'Alice', 30, 'alice@example.com', '2023-07-01 10:00:00'),
(2, 'Bob', 25, 'bob@example.com', '2023-07-02 11:00:00'),
(3, 'Charlie', 35, 'charlie@example.com', '2023-07-03 12:00:00'),
(4, 'David', 28, 'david@example.com', '2023-07-04 13:00:00'),
(5, 'Eve', 22, 'eve@example.com', '2023-07-05 14:00:00');

INSERT INTO table2 (id, title, description, author, published_at) VALUES
(1, 'SQL Basics', 'An introduction to SQL', 'Alice', '2023-07-01'),
(2, 'Advanced SQL', 'Deep dive into SQL', 'Bob', '2023-07-02'),
(3, 'Database Design', 'Best practices for database design', 'Charlie', '2023-07-03'),
(4, 'Performance Tuning', 'Optimizing SQL queries', 'David', '2023-07-04'),
(5, 'Security in SQL', 'Ensuring data security', 'Eve', '2023-07-05');

INSERT INTO table3 (id, product_name, price, quantity, added_at) VALUES
(1, 'Product A', 9.99, 100, '2023-07-01 10:00:00'),
(2, 'Product B', 19.99, 200, '2023-07-02 11:00:00'),
(3, 'Product C', 29.99, 300, '2023-07-03 12:00:00'),
(4, 'Product D', 39.99, 400, '2023-07-04 13:00:00'),
(5, 'Product E', 49.99, 500, '2023-07-05 14:00:00');

INSERT INTO table4 (id, employee_name, department, salary, joined_at) VALUES
(1, 'John', 'Sales', 50000, '2023-07-01'),
(2, 'Jane', 'Marketing', 60000, '2023-07-02'),
(3, 'Jim', 'Engineering', 70000, '2023-07-03'),
(4, 'Jack', 'HR', 80000, '2023-07-04'),
(5, 'Jill', 'Finance', 90000, '2023-07-05');

INSERT INTO table5 (id, course_name, instructor, duration, start_date) VALUES
(1, 'Math 101', 'Prof. Smith', 10, '2023-07-01'),
(2, 'Physics 101', 'Dr. Brown', 15, '2023-07-02'),
(3, 'Chemistry 101', 'Dr. Green', 20, '2023-07-03'),
(4, 'Biology 101', 'Prof. White', 25, '2023-07-04'),
(5, 'Computer Science 101', 'Dr. Black', 30, '2023-07-05');

CREATE TABLE table3_with_constraints (
    id INT PRIMARY KEY,
    product_name VARCHAR(100) UNIQUE,
    price DECIMAL(10, 2) CHECK (price > 0),
    quantity INT CHECK (quantity >= 0),
    added_at TIMESTAMP
);

CREATE TABLE table4_with_constraints (
    id INT PRIMARY KEY,
    employee_name VARCHAR(50) UNIQUE,
    department VARCHAR(50),
    salary DECIMAL(10, 2) CHECK (salary > 0),
    joined_at DATE
);

CREATE TABLE table5_with_constraints (
    id INT PRIMARY KEY,
    course_name VARCHAR(100) UNIQUE,
    instructor VARCHAR(50),
    duration INT CHECK (duration > 0),
    start_date DATE
);


ALTER TABLE table1
ADD CONSTRAINT check_age CHECK (age >= 18);

ALTER TABLE table3
ADD CONSTRAINT check_price CHECK (price > 0);

-- Table 4
ALTER TABLE table4
ADD CONSTRAINT unique_employee_name UNIQUE (employee_name);

ALTER TABLE table4
ADD CONSTRAINT check_salary CHECK (salary > 0);

-- Table 5
ALTER TABLE table5
ADD CONSTRAINT unique_course_name UNIQUE (course_name);

ALTER TABLE table5
ADD CONSTRAINT check_duration CHECK (duration > 0);


ALTER TABLE table1
DROP CONSTRAINT unique_email;

ALTER TABLE table1
DROP CONSTRAINT check_age;

-- Table 2
ALTER TABLE table2
DROP CONSTRAINT unique_title;

ALTER TABLE table2
DROP CONSTRAINT check_published_at;

-- Table 3
ALTER TABLE table3
DROP CONSTRAINT unique_product_name;

ALTER TABLE table3
DROP CONSTRAINT check_price;

-- Table 4
ALTER TABLE table4
DROP CONSTRAINT unique_employee_name;

ALTER TABLE table4
DROP CONSTRAINT check_salary;

-- Table 5
ALTER TABLE table5
DROP CONSTRAINT unique_course_name;

ALTER TABLE table5
DROP CONSTRAINT check_duration;

SELECT * FROM TABLE1;
SELECT * FROM TABLE2;
SELECT * FROM TABLE3;
SELECT * FROM TABLE4;
SELECT * FROM TABLE5;
