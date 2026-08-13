-- ==========================================
-- DELETE vs TRUNCATE vs DROP
-- ==========================================

-- DELETE
-- Removes rows from a table.
-- WHERE can be used to remove specific rows.

-- Syntax:
-- DELETE FROM table_name
-- WHERE condition;


-- TRUNCATE
-- Removes ALL rows from a table.
-- The table structure remains.
-- WHERE cannot be used.

-- Syntax:
-- TRUNCATE TABLE table_name;


-- DROP
-- Removes the entire table including its data
-- and structure.

-- Syntax:
-- DROP TABLE table_name;


-- ==========================================
-- QUICK COMPARISON
-- ==========================================

-- DELETE    → Removes rows
-- TRUNCATE  → Removes all rows
-- DROP      → Removes the entire table


-- DELETE    → Table remains
-- TRUNCATE  → Table remains
-- DROP      → Table is removed


-- DELETE    → WHERE allowed
-- TRUNCATE  → WHERE not allowed
-- DROP      → WHERE not allowed


-- IMPORTANT:
-- Do NOT execute DELETE, TRUNCATE, or DROP
-- on the employees table used for practice.