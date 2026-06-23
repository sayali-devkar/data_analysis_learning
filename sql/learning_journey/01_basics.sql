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
