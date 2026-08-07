-- 1. COUNT()
-- COUNT(*) = COUNTS ROWS OR VALUES!!

-- EX 1
SELECT COUNT(*)
FROM employees;

-- EX 2
SELECT COUNT(salary)
FROM employees;

-- EX 3 Count unique departments
SELECT COUNT(DISTINCT department)
FROM employees;

-- EX 4 How many different cities?
SELECT COUNT(DISTINCT city)
FROM employees;

-- 2. SUM()

-- Purpose: Adds all values in a numeric column.

-- Syntax
-- SELECT SUM(column_name)
-- FROM table_name;

-- SELECT SUM(column_name)
-- FROM table_name
-- WHERE condition;

-- 3. AVG()

-- Purpose: Calculates the average value.

-- Syntax
-- SELECT AVG(column_name)
-- FROM table_name;

-- 3 MIN()

-- Syntax

-- SELECT MIN(column_name)
-- FROM table_name;

-- With WHERE

-- SELECT MIN(column_name)
-- FROM table_name
-- WHERE condition;

-- Example

SELECT MIN(salary)
FROM employees;

SELECT MIN(age)
FROM employees;

-- 5. MAX()

-- Syntax

-- SELECT MAX(column_name)
-- FROM table_name;
-- With WHERE
-- SELECT MAX(column_name)
-- FROM table_name
-- WHERE condition;

-- Example

SELECT MAX(salary)
FROM employees;

SELECT MAX(experience)
FROM employees;