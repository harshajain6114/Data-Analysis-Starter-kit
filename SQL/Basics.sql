-- SQL Basics Starter Queries
-- When to use: 
-- Use these queries when you want to explore a new dataset quickly in any SQL database (SQLite, MySQL, PostgreSQL, etc.)

-- 1. View first 10 rows of a table
SELECT *
FROM your_table_name
LIMIT 10;

-- 2. Count total rows
SELECT COUNT(*) AS total_rows
FROM your_table_name;

-- 3. View distinct values of a column
SELECT DISTINCT column_name
FROM your_table_name;

-- 4. Basic filtering
SELECT *
FROM your_table_name
WHERE column_name = 'some_value';

-- 5. Sorting
SELECT *
FROM your_table_name
ORDER BY column_name DESC
LIMIT 10;

-- 6. Basic math operations
SELECT column1, column2, (column1 + column2) AS sum_value
FROM your_table_name
LIMIT 10;
