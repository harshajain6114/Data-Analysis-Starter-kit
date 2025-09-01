-- SQL Aggregations and Grouping
-- When to use:
-- Use these queries when you want to summarize your data (counts, averages, totals) or find insights grouped by a category.

-- 1. Count per category
SELECT category_column, COUNT(*) AS count_per_category
FROM your_table_name
GROUP BY category_column;

-- 2. Average of a column
SELECT AVG(numeric_column) AS avg_value
FROM your_table_name;

-- 3. Minimum and Maximum
SELECT MIN(numeric_column) AS min_value,
       MAX(numeric_column) AS max_value
FROM your_table_name;

-- 4. Group by + aggregation
SELECT category_column, AVG(numeric_column) AS avg_per_group
FROM your_table_name
GROUP BY category_column;

-- 5. Multiple aggregations
SELECT category_column,
       COUNT(*) AS total_rows,
       AVG(numeric_column) AS avg_value,
       SUM(numeric_column) AS total_sum
FROM your_table_name
GROUP BY category_column;
