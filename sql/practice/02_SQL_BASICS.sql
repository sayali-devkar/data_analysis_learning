CREATE DATABASE company_db;

USE company_db;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    gender VARCHAR(10),
    age INT,
    department VARCHAR(30),
    city VARCHAR(30),
    salary INT,
    experience INT,
    rating DECIMAL(2,1),
    joining_date DATE
);
INSERT INTO employees
(emp_id, name, gender, age, department, city, salary, experience, rating, joining_date)
VALUES
(101, 'Aarav', 'Male', 24, 'IT', 'Pune', 45000, 2, 4.2, '2023-06-15'),
(102, 'Diya', 'Female', 28, 'HR', 'Mumbai', 52000, 5, 4.5, '2020-04-12'),
(103, 'Kabir', 'Male', 31, 'Finance', 'Delhi', 68000, 8, 4.8, '2017-09-10'),
(104, 'Meera', 'Female', 26, 'IT', 'Pune', 48000, 3, 4.1, '2022-03-21'),
(105, 'Rohan', 'Male', 35, 'Sales', 'Mumbai', 72000, 10, 4.6, '2015-01-05'),
(106, 'Sneha', 'Female', 29, 'Marketing', 'Bangalore', 61000, 6, 4.4, '2019-07-18'),
(107, 'Arjun', 'Male', 27, 'IT', 'Hyderabad', 53000, 4, 4.0, '2021-05-25'),
(108, 'Priya', 'Female', 30, 'Finance', 'Delhi', 70000, 7, 4.7, '2018-11-09'),
(109, 'Vikram', 'Male', 33, 'HR', 'Pune', 56000, 9, 3.9, '2016-12-30'),
(110, 'Ananya', 'Female', 25, 'Sales', 'Mumbai', 47000, 2, 4.3, '2023-02-14'),
(111, 'Rahul', 'Male', 32, 'IT', 'Bangalore', 75000, 9, 4.9, '2015-08-19'),
(112, 'Isha', 'Female', 24, 'Marketing', 'Pune', 44000, 1, 3.8, '2024-01-10'),
(113, 'Karan', 'Male', 29, 'Finance', 'Mumbai', 65000, 6, 4.5, '2019-10-02'),
(114, 'Neha', 'Female', 27, 'IT', 'Delhi', 51000, 4, 4.2, '2021-06-08'),
(115, 'Yash', 'Male', 26, 'Sales', 'Hyderabad', 49000, 3, 4.1, '2022-09-12'),
(116, 'Riya', 'Female', 31, 'HR', 'Pune', 59000, 7, 4.6, '2018-05-16'),
(117, 'Aditya', 'Male', 28, 'Marketing', 'Delhi', 55000, 5, 4.0, '2020-08-27'),
(118, 'Pooja', 'Female', 34, 'Finance', 'Mumbai', 73000, 10, 4.8, '2014-12-03'),
(119, 'Nikhil', 'Male', 25, 'IT', 'Bangalore', 46000, 2, 3.9, '2023-07-11'),
(120, 'Simran', 'Female', 29, 'Sales', 'Pune', 60000, 6, 4.4, '2019-03-29');

SELECT*FROM employees;
DESCRIBE employees ; 
SELECT COUNT(*) FROM employees;

-- Q1 Display all the records from the employees table.
SELECT*FROM employees ; 

-- Q2 Display only the following columns:name,department,salary
SELECT
name , department , salary 
FROM employees ;

-- Q3 Display all columns for employees whose department is IT.
SELECT* 
FROM employees 
WHERE department = 'IT';

-- Q4 Display the name and city of employees whose salary is greater than 50,000.
SELECT
name , city 
FROM employees 
WHERE salary > 50000;

-- Q5 Display all details of employees who:are from Pune, AND,have more than 3 years of experience.
SELECT* 
FROM employees 
WHERE city = 'Pune' 
AND
experience > 3;

-- Q6 Display the name, department, and city of employees who are:from Mumbai, OR,from Delhi.
SELECT
name , department , city 
FROM employees
WHERE 
city = 'Mumbai' 
OR
city = 'Delhi';

-- Q7 Without using OR, display all columns of employees who are from Pune, Mumbai, or Delhi.
SELECT*FROM employees WHERE city IN ('Pune'  , 'Mumbai' , 'Delhi') ;

-- Q8 Display the name, department, and city of employees who are not from:Pune ,Mumbai
SELECT 
name , department , city
FROM employees 
WHERE city NOT IN ('Mumbai' , 'Pune');

-- Q9 Display all employees whose name starts with the letter A.
SELECT*
FROM employees
WHERE name LIKE 'A%';

-- Q9A) Display all employees whose name ends with the letter a.
SELECT*
FROM employees
WHERE name LIKE '%a';

-- Q9B) Display employees whose name contains "ra".
SELECT*
FROM employees 
WHERE name LIKE '%RA%';

-- Q9C) Display employees whose name has exactly 5 letters.
SELECT*
FROM employees
WHERE name LIKE '_____';

-- Q9D) Display employees whose city starts with B.
SELECT*
FROM employees
WHERE city LIKE 'B%';

-- Q10) Display all employees ordered by salary in ascending order.
SELECT*
FROM employees
ORDER BY salary;

-- Q11) Display all employees ordered by salary in descending order.
SELECT*
FROM employees
ORDER BY salary DESC;

-- 12) Display all employees ordered by name alphabetically.
SELECT*
FROM employees
ORDER BY name;

-- 13) Display the name, department, and salary of employees from the IT department, ordered by salary from highest to lowest.
SELECT
    name,
    department,
    salary
FROM employees
WHERE department = 'IT'
ORDER BY salary DESC;

-- 14) Display all employees ordered by: Department (A → Z) , Salary (Highest → Lowest within each department)
SELECT*
FROM employees
ORDER BY department ASC , salary DESC;