-- SQL Joins
-- When to use:
-- Use these queries when your dataset is split across multiple tables and you want to combine them.

-- 1. Inner Join (only matching rows)
SELECT a.*, b.*
FROM table_a AS a
INNER JOIN table_b AS b
ON a.id = b.id;

-- 2. Left Join (all rows from left, matching from right)
SELECT a.*, b.*
FROM table_a AS a
LEFT JOIN table_b AS b
ON a.id = b.id;

-- 3. Right Join (all rows from right, matching from left) [works in MySQL/Postgres, not SQLite]
SELECT a.*, b.*
FROM table_a AS a
RIGHT JOIN table_b AS b
ON a.id = b.id;

-- 4. Full Outer Join (all rows, matched or not) [works in Postgres, not MySQL/SQLite]
SELECT a.*, b.*
FROM table_a AS a
FULL OUTER JOIN table_b AS b
ON a.id = b.id;

-- 5. Self Join
SELECT a.id, a.name, b.name AS related_name
FROM employees AS a
JOIN employees AS b
ON a.manager_id = b.id;
