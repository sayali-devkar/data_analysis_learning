-- ==========================================
-- UPDATE
-- ==========================================

-- UPDATE is used to modify existing data
-- in a table.

-- Syntax:
-- UPDATE table_name
-- SET column_name = new_value
-- WHERE condition;


-- Example:
-- UPDATE employees
-- SET city = 'Mumbai'
-- WHERE emp_id = 5;


-- Updating multiple columns:
-- UPDATE employees
-- SET
--     salary = 60000,
--     city = 'Pune'
-- WHERE emp_id = 5;


-- Updating using a condition:
-- UPDATE employees
-- SET salary = salary + 5000
-- WHERE department = 'IT';


-- IMPORTANT:
-- Always use WHERE carefully with UPDATE.
-- Without WHERE, all rows will be updated.


-- INSERT → adds new rows
-- UPDATE → modifies existing rows
-- DELETE → removes existing rows

