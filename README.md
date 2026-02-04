# 📊 Jennie Store Merchandise Sales Analysis (2025)

![SQL Badge](https://img.shields.io/badge/SQL-PostgreSQL-blue)
![CSV Badge](https://img.shields.io/badge/CSV-Cleaned-green)
![Report Badge](https://img.shields.io/badge/Report-PDF-orange)

---

## Overview
This project is a **simple academic study** analyzing **sales of Jennie Store merchandise in 2025** using **PostgreSQL**.  
The focus is not only on recording transactions, but also on **transforming raw sales data into meaningful insights** that can support sales strategies.

> **Note:** This dataset is **simulated for academic purposes** and does not reflect real sales data from Jennie Store.

---

## Tools & Technologies
- **PostgreSQL** – database management & SQL queries  
- **SQL** – aggregation functions, window functions, GROUP BY, SUM, AVG, RANK  
- **Spreadsheet tools** – for initial data cleaning and preparation  

---

## Analysis Performed & Key Insights

### 1. Total Monthly Revenue
- Calculated **monthly revenue** using `SUM(quantity * price)`.  
- **Insight:** Identify which months generated the highest revenue.  
  - Example: April 2025 = Rp21.250.000 (highest revenue month)

### 2. Monthly Units Sold
- Calculated **total units sold** each month using `SUM(quantity)`.  
- **Insight:** Shows trends in fan purchases over the year (early, mid, late year).

### 3. Average Product Price per Month
- Used `AVG(price)` to find **average price of sold products** each month.  
- **Insight:** Understand product preference by price:  
  - March: Rp225.000 → mostly posters & T-shirts  
  - May: Rp600.000 → mostly lightsticks

### 4. Best-Selling Product Category per Month
- Used **window function (`RANK`)** to find top product categories monthly.  
- **Insight:** Fans’ preferred products shift over time:  
  - January → Album  
  - February & April → Merch Exclusive (Tumbler)  
  - March → T-shirt  
  - May → Lightstick

---

## 👩‍💻 Author
**Alisha Zaharani**  
Information Systems Student  
Data Analyst | Business Intelligence

---

## 🔗 Connect with Me
Feel free to explore the project and connect with me on [LinkedIn](https://www.linkedin.com/in/alishazaharani/)!
