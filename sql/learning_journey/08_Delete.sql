-- ==========================================
-- DELETE
-- ==========================================

-- DELETE is used to remove existing rows
-- from a table.

-- Syntax:
-- DELETE FROM table_name
-- WHERE condition;


-- Delete one specific row:
-- DELETE FROM employees
-- WHERE emp_id = 5;


-- Delete multiple rows using a condition:
-- DELETE FROM employees
-- WHERE department = 'IT';


-- IMPORTANT:
-- Always use WHERE carefully with DELETE.
-- Without WHERE, all rows will be deleted.


-- DELETE removes rows.
-- The table structure remains.