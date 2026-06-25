-- Create Database
CREATE DATABASE practice_db;
SHOW DATABASES;

USE practice_db;

-- Students Table
CREATE TABLE students (
id INT AUTO_INCREMENT PRIMARY KEY , 
name VARCHAR (50) NOT NULL,
city VARCHAR (50) NOT NULL,
age INT NOT NULL,
marks FLOAT
);

USE practice_db;

-- Employees Table
CREATE TABLE employees (
id INT AUTO_INCREMENT PRIMARY KEY , 
name VARCHAR(50) NOT NULL ,
role VARCHAR(50) NOT NULL,
city VARCHAR(50) NOT NULL,
salary DECIMAL(10,2) NOT NULL,
experience FLOAT NOT NULL
);

USE practice_db;

-- Products Table
CREATE TABLE products (
id INT AUTO_INCREMENT PRIMARY KEY , 
product_name VARCHAR(50) ,
product_category VARCHAR(50),
product_status VARCHAR(50) NOT NULL 
);

INSERT INTO employees(name , role , city , salary , experience)
VALUES
('Rahul' , 'Engineer', 'Mumbai' , 75000.00 , 4.0),
('Sheela' , 'Manager' , 'Delhi' , 90000.00 , 7.0),
('Karan' , 'Analyst' , 'Pune' , 55000.00 , 1.5),
('Priya' , 'Social Media Manager', 'Mumbai', 40000.00 , 1),
('Amay' , 'Tester' , 'Banglore' , 60000.00 , 2);

SELECT*FROM employees;

SELECT name, salary FROM employees WHERE salary >= 60000;
SELECT name, salary FROM employees WHERE salary > 60000;
SELECT * FROM employees WHERE city = 'Pune' OR city = 'Mumbai';


-- DAY 2 OF SQL BASICS 

-- Get all employees from Mumbai
SELECT*FROM employees WHERE city = 'Mumbai';

-- Get only name and salary of employees earning more than 60000
SELECT name , salary FROM employees WHERE salary > 60000;

-- Get employees sorted by salary highest to lowest
SELECT*FROM employees ORDER BY salary DESC;

-- Get top 3 highest paid employees
SELECT*FROM employees  LIMIT 3;

-- Get employees whose name contains 'a'
SELECT*FROM employees WHERE name LIKE '%a%' ;

-- AND With WHERE CLAUSE
-- Employees from Mumbai with salary above 60000
SELECT*FROM employees WHERE city = 'Mumbai' AND salary > 60000;

-- OR With WHERE CLAUSE
-- Employees from Pune OR Delhi
SELECT*FROM employees WHERE city = 'Pune' OR city = 'Delhi';

-- IN With WHERE CLAUSE
-- Employees whose role is IN ('Analyst', 'Tester', 'Engineer')
SELECT*FROM employees WHERE role IN ('Analyst' , 'Tester' , 'Engineer');

-- DELETE
-- ALWAYS USE WHERE CLAUSE WITH DELETE 
-- BEFORE DELETING TRY SELECT AND SEE WHEATHER ITS THE CORRECT RECORD YOU WANT TO DELETE
SELECT*FROM employees WHERE name = 'Karan';
SET SQL_SAFE_UPDATES = 0;
DELETE FROM employees WHERE name ='Karan';
SELECT*FROM employees;
SET SQL_SAFE_UPDATES = 1;

-- safest way to delete is using id
DELETE FROM employees WHERE id = 3;
SELECT*FROM employees; 

-- 1.Update Rahul's salary to 85000
UPDATE employees
SET salary = 85000
WHERE id = 1;
SELECT*FROM employees;

-- 2. Update Sheela's city to Pune and salary to 95000
UPDATE employees
SET city = 'Pune' , salary = 95000
WHERE id = 2;
SELECT*FROM employees;

-- DAY 3
-- ALTER TABLE USED TO MODIFY THE TABLE STRUCTURE

-- 1. Add a email column
ALTER TABLE employees ADD email VARCHAR(50);
SELECT*FROM employees;

-- 2. Drop the email column
ALTER TABLE employees DROP COLUMN email;
SELECT*FROM employees;

-- 3. MODIFY : USED TO CHANGE THE DATATYPE OF COLUMN OR CONTRAINT OF A COLUMN

-- 4. RENAME : USED TO RENAME A COLUMN WITH A DIFFERENT NAME 
ALTER TABLE employees RENAME COLUMN role TO job_title;
SELECT*FROM employees;