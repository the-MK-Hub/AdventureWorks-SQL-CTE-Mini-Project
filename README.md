# AdventureWorks-SQL-CTE-Mini-Project

This mini project showcases how to use **Common Table Expressions (CTEs)** to analyze sales data from the Adventure Works dataset and answer practical business questions.

---

## 📌 Project Overview

In this project, I use CTEs to simplify complex queries and make the SQL more readable and reusable.  
The analysis focuses on customers, products, territories, and time-based sales performance using the `factsales` and `dimsalesterritory` tables.

---

## 🛠 Tech Stack

- SQL (MySQL / SQL-compatible engine)  
- Adventure Works sales dataset (`factsales`, `dimsalesterritory`)

---

## 🧠 SQL Concepts Used

- Common Table Expressions (**WITH** clause)  
- Window functions: `RANK`, `ROW_NUMBER`  
- Aggregate functions: `SUM`, `AVG`, `COUNT`  
- `GROUP BY`, subqueries, filters on aggregated results

---

## 🗂 Tables Used

### `factsales`

Contains transaction-level sales data: customer name, product name, sales amount, dates, total product cost, territory key, etc.

### `dimsalesterritory`

Contains territory-related information like country and region.

---

## 📊 Business Questions Answered

Each of the below is implemented using one or more CTEs in the script:

- Total sales per customer  
- Customers with total sales greater than 10,000  
- Total sales per product  
- Monthly sales by month name  
- Customer revenue ranking using `RANK`  
- Top 5 customers by total revenue  
- Product ranking based on total product cost  
- Customers whose total sales are above the average customer sales  
- Territory sales analysis: territories with total sales above average territory sales  
- Top customer per territory based on total sales  
- Running total of sales over time (cumulative sales by date)  
- Best-selling product per month  
- Customer first purchase date using `ROW_NUMBER`  
- Customers who bought more than 3 distinct products  

---

## 🔍 Key Insights

- A small group of customers contributes a large portion of total revenue (visible from customer ranking and top 5 customers).  
- Certain products and months emerge as top performers, which can help in planning inventory and promotions.  
- Some territories perform significantly above the average, indicating strong markets to prioritize.  
- Finding customers who purchased more than 3 products and their first purchase date helps in customer retention and cross-sell strategies.

---

## 📁 Files in this Repository

- `CTE-s_Mini_Project.sql` – contains all the CTE-based queries for the business questions listed above.

---

## 🚀 How to Use

1. Import or connect to the Adventure Works Internet Sales datasets in Excel or your personal workspace.  
2. Merge the two Internet Sales fact datasets in Excel to create the final consolidated `factsales` table.  
3. Load the merged `factsales` table and the `dimsalesterritory` table into your SQL environment.  
4. Make sure both tables exist with the required columns.  
5. Run the script `CTE-s_Mini_Project.sql` section by section to explore each analysis.


---

## 📚 Learning Outcomes

- Practiced writing clean and modular SQL using CTEs.  
- Used window functions together with CTEs for ranking, running totals, and first purchase detection.  
- Answered real-world style business questions on customers, products, and territories from a sales dataset.
