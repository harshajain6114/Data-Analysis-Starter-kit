
###  1. Power Query (Data Cleaning & Transformation)

```powerquery
// Remove duplicates
Table.Distinct(#"Previous Step")

// Replace missing values with 0
Table.ReplaceValue(#"Previous Step", null, 0, Replacer.ReplaceValue, {"ColumnName"})

// Split column by delimiter
Table.SplitColumn(#"Previous Step", "FullName", Splitter.SplitTextByDelimiter(" "), {"FirstName", "LastName"})

// Add custom calculated column
Table.AddColumn(#"Previous Step", "Profit", each [Sales] - [Cost])
```

**When to use:**
 Whenever raw dataset is messy (extra spaces, missing values, duplicates).

---

###  2. DAX Measures (Analysis Logic)

```dax
-- Total Sales
Total Sales = SUM(Sales[Amount])

-- Total Profit
Total Profit = SUM(Sales[Sales]) - SUM(Sales[Cost])

-- Profit Margin %
Profit Margin % = DIVIDE([Total Profit], [Total Sales], 0)

-- Year-to-Date Sales
YTD Sales = TOTALYTD([Total Sales], 'Date'[Date])

-- Moving Average (last 3 months)
Moving Avg Sales = AVERAGEX(DATESINPERIOD('Date'[Date], MAX('Date'[Date]), -3, MONTH), [Total Sales])
```

**When to use:**
 Use DAX when you need KPIs, aggregations, ratios, YoY growth, etc.

---

###  3. Visualization Best Practices

* **Cards** → For KPIs like Total Sales, Profit Margin.
* **Line Chart** → For trends over time.
* **Bar/Column Chart** → For category comparisons.
* **Pie/Donut Chart** → For distribution (% share).
* **Table/Matrix** → For detailed tabular reporting.
* **Slicers/Filters** → To allow users to interact with data.

---

###  4. Pro Tips for Beginners

* Always create a **Date Table** for time-based calculations.
* Use **Power Query** for data cleaning, **DAX** for calculations.
* Avoid loading unnecessary columns (keeps file fast).
* Always add a **“last refreshed” timestamp** in reports.
* Keep dashboards **simple, clean, and interactive**.

---

