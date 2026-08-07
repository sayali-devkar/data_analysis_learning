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

-- 2. 