# Supply Chain Data Analysis Using PostgreSQL

## Project Overview
A SQL-based analysis of 1,500 supply chain orders using PostgreSQL. The project examines order status, product profitability, regional performance, transportation costs, and delivery delays to identify business insights.

## Tools
- PostgreSQL
- pgAdmin
- SQL

## Dataset
- **Orders:** 1,500
- **Unique customers:** 1,380
- **Unique products:** 25
- **Period:** January 2024 – December 2025

## Key Findings
- **Total profit:** 7,257,202.89
- **Highest-profit category:** Furniture — 3,041,930.54
- **Highest-profit product:** Bookshelf — 759,658.05
- **Highest-profit transportation mode:** Rail — 1,966,012.59
- **Orders with negative profit:** 57
- **Highest monthly delayed-order percentage:** October 2025 — 9.38%

*Note: The dataset does not specify a currency.*

## Business Recommendations
- Investigate loss-making orders and low-profit categories.
- Monitor regions and months with higher delayed-order percentages.
- Compare transportation costs with operational requirements.
- Use product and regional profitability to support business decisions.

## Project Files
- `01_SQL_Scripts/` — Data validation and exploratory data analysis.
- `Documentation/` — Project overview and business findings.
- `04_Screenshots/` — SQL queries and result screenshots.

## Limitations
This is a sample dataset for learning and portfolio purposes, not verified company data. Supplier identifiers and names are inconsistent, and promised delivery dates are unavailable. Therefore, contractual on-time delivery performance cannot be established.

## Skills Demonstrated
SQL querying, data validation, aggregation, grouping, filtering, Common Table Expressions (CTEs), profitability analysis, and business interpretation.


## SQL Analysis Screenshots

### 1. Overall Project Summary
![Overall Project Summary](04_Screenshots/01_Overall_Project_Summary.png)

### 2. Order Status Analysis
![Order Status Analysis](04_Screenshots/02_Order_Status_Analysis.png)

### 3. Profit by Product Category
![Profit by Product Category](04_Screenshots/03_Profit_by_Category.png)

### 4. Profit by Region
![Profit by Region](04_Screenshots/04_Profit_by_Region.png)

### 5. Monthly Profit Analysis
![Monthly Profit Analysis](04_Screenshots/05_Monthly_Profit_Analysis.png)

### 6. Delayed Orders by Region
![Delayed Orders by Region](04_Screenshots/06_Delayed_Orders_by_Region.png)

### 7. Loss-Making Orders
![Loss-Making Orders](04_Screenshots/07_Loss_Making_Orders.png)

### 8. Top 10 Products by Profit
![Top 10 Products by Profit](04_Screenshots/08_Top_10_Products_by_Profit.png)
