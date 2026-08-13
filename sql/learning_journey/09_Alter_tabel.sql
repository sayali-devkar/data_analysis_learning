-- ==========================================
-- ALTER TABLE
-- ==========================================

-- ALTER TABLE is used to modify the structure
-- of an existing table.


-- ==========================================
-- 1. ADD COLUMN
-- ==========================================

-- Syntax:
-- ALTER TABLE table_name
-- ADD column_name data_type;

-- Example:
-- ALTER TABLE employees
-- ADD email VARCHAR(100);


-- ==========================================
-- 2. MODIFY COLUMN
-- ==========================================

-- Syntax:
-- ALTER TABLE table_name
-- MODIFY column_name new_data_type;

-- Example:
-- ALTER TABLE employees
-- MODIFY salary DECIMAL(10,2);


-- ==========================================
-- 3. RENAME COLUMN
-- ==========================================

-- Syntax:
-- ALTER TABLE table_name
-- RENAME COLUMN old_name TO new_name;

-- Example:
-- ALTER TABLE employees
-- RENAME COLUMN city TO location;


-- ==========================================
-- 4. DROP COLUMN
-- ==========================================

-- Syntax:
-- ALTER TABLE table_name
-- DROP COLUMN column_name;

-- Example:
-- ALTER TABLE employees
-- DROP COLUMN email;


-- IMPORTANT:
-- ALTER TABLE changes the structure of a table.
-- Be careful with DROP COLUMN because the column
-- and its data will be removed.