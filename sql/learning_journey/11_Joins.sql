-- ==========================================
-- SQL JOINS
-- ==========================================

CREATE DATABASE sql_joins;

USE sql_joins;

-- ==========================================
-- DEPARTMENTS TABLE
-- ==========================================

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

-- ==========================================
-- INSERT DATA INTO DEPARTMENTS
-- ==========================================

INSERT INTO departments VALUES
(101, 'IT'),
(102, 'HR'),
(103, 'Finance'),
(104, 'Marketing');

SELECT*
FROM departments;

-- ==========================================
-- EMPLOYEES TABLE
-- ==========================================

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department_id INT,
    salary DECIMAL(10,2),
    city VARCHAR(50)
);

-- ==========================================
-- INSERT DATA INTO EMPLOYEES
-- ==========================================

INSERT INTO employees VALUES
(1, 'Aarav', 101, 75000, 'Pune'),
(2, 'Diya', 102, 52000, 'Mumbai'),
(3, 'Kabir', 101, 68000, 'Pune'),
(4, 'Meera', 103, 85000, 'Delhi'),
(5, 'Rohan', 102, 48000, 'Mumbai'),
(6, 'Sneha', 104, 60000, 'Pune'),
(7, 'Arjun', 101, 72000, 'Bangalore'),
(8, 'Priya', 103, 90000, 'Mumbai'),
(9, 'Vikram', 102, 55000, 'Delhi'),
(10, 'Ananya', 104, 65000, 'Pune');

SELECT*
FROM employees;

-- ==========================================
-- TABLE ALIASES
-- ==========================================

-- An alias is a temporary short name given
-- to a table within a query.

-- Syntax:
-- FROM table_name alias


-- Example:
-- FROM employees e
-- INNER JOIN departments d


-- e = employees
-- d = departments


-- Without aliases:
SELECT employees.name, departments.department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id;


-- With aliases:
SELECT e.name, d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id;