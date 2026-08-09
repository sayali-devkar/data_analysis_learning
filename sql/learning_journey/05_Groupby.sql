--  What does GROUP BY do?

-- It divides your rows into groups based on a column, then lets you perform aggregate calculations on each group.

-- SYNTAX
SELECT column_name, AGGREGATE_FUNCTION(column_name)
FROM table_name
GROUP BY column_name;

-- EXAMPLE
SELECT department, COUNT(*)
FROM employees
GROUP BY department;


-- Meaning:

-- Group employees by department and count how many employees are in each department.

-- EXAMPLE 
--  salary by department
SELECT department , SUM(salary)
FROM employees
GROUP BY department;

-- GROUP BY + WHERE

-- Count employees in each department, but only consider employees with salary greater than 50,000.

SELECT department, COUNT(*)
FROM employees
WHERE salary > 50000
GROUP BY department;