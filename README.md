# AdventureWorks-SQL-CTE-Mini-Project

This mini project showcases how to use **Common Table Expressions (CTEs)** to analyze sales data from the Adventure Works dataset and answer practical business questions.[page:5]

---

## 📌 Project Overview

In this project, I use CTEs to simplify complex queries and make the SQL more readable and reusable.[page:5]  
The analysis focuses on customers, products, territories, and time-based sales performance using the `factsales` and `dimsalesterritory` tables.[page:5]

---

## 🛠 Tech Stack

- SQL (MySQL / SQL-compatible engine)[page:5]  
- Adventure Works sales dataset (`factsales`, `dimsalesterritory`)[page:5]

---

## 🧠 SQL Concepts Used

- Common Table Expressions (**WITH** clause)[page:5]  
- Window functions: `RANK`, `ROW_NUMBER`[page:5]  
- Aggregate functions: `SUM`, `AVG`, `COUNT`[page:5]  
- `GROUP BY`, subqueries, filters on aggregated results[page:5]

---

## 🗂 Tables Used

### `factsales`

Contains transaction-level sales data: customer name, product name, sales amount, dates, total product cost, territory key, etc.[page:5]

### `dimsalesterritory`

Contains territory-related information like country and region.[page:5]

---

## 📊 Business Questions Answered

Each of the below is implemented using one or more CTEs in the script:[page:5]

- Total sales per customer[page:5]  
- Customers with total sales greater than 10,000[page:5]  
- Total sales per product[page:5]  
- Monthly sales by month name[page:5]  
- Customer revenue ranking using `RANK`[page:5]  
- Top 5 customers by total revenue[page:5]  
- Product ranking based on total product cost[page:5]  
- Customers whose total sales are above the average customer sales[page:5]  
- Territory sales analysis: territories with total sales above average territory sales[page:5]  
- Top customer per territory based on total sales[page:5]  
- Running total of sales over time (cumulative sales by date)[page:5]  
- Best-selling product per month[page:5]  
- Customer first purchase date using `ROW_NUMBER`[page:5]  
- Customers who bought more than 3 distinct products[page:5]

---

## 🔍 Key Insights

- A small group of customers contributes a large portion of total revenue (visible from customer ranking and top 5 customers).[page:5]  
- Certain products and months emerge as top performers, which can help in planning inventory and promotions.[page:5]  
- Some territories perform significantly above the average, indicating strong markets to prioritize.[page:5]  
- Finding customers who purchased more than 3 products and their first purchase date helps in customer retention and cross-sell strategies.[page:5]

---

## 📁 Files in this Repository

- `CTE-s_Mini_Project.sql` – contains all the CTE-based queries for the business questions listed above.[page:5]

---

## 🚀 How to Use

1. Import or connect to the Adventure Works sales dataset in your SQL environment.[page:5]  
2. Make sure the tables `factsales` and `dimsalesterritory` (or equivalent) exist with the required columns.[page:5]  
3. Run the script `CTE-s_Mini_Project.sql` section by section to explore each analysis.[page:5]

---

## 📚 Learning Outcomes

- Practiced writing clean and modular SQL using CTEs.[page:5]  
- Used window functions together with CTEs for ranking, running totals, and first purchase detection.[page:5]  
- Answered real-world style business questions on customers, products, and territories from a sales dataset.[page:5]
