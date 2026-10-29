# supply-chain-data-analysis
Supply chain data analysis using PostgreSQL and SQL.

Supply Chain Data Analysis
Project Overview
This project uses PostgreSQL to analyze supply chain order data and identify patterns in order performance, product profitability, transportation costs, regional performance, and delivery delays.
Tools Used
•	PostgreSQL
•	pgAdmin
•	SQL
Dataset
•	1,500 orders
•	1,380 unique customers
•	25 unique products
•	Period: January 2024 to December 2025
Project Objectives
•	Validate data quality and consistency.
•	Analyze order status and delivery performance.
•	Identify profitable products and categories.
•	Compare performance across regions and transportation modes.
•	Analyze monthly order and profit trends.
•	Identify loss-making orders and delayed-order patterns.
Key Findings
•	Total profit: 7,257,202.89.
•	Furniture generated the highest category profit: 3,041,930.54.
•	Bookshelf had the highest total product profit: 759,658.05.
•	Rail had the highest total profit among transportation modes: 1,966,012.59.
•	There were 57 orders with negative profit.
•	October 2025 had the highest monthly delayed-order percentage: 9.38%.
Project Structure
•	01_SQL_Scripts/ — SQL scripts for validation and exploratory analysis.
•	Documentation/ — project overview and business findings.
•	README.md — project introduction and key results.
Business Recommendations
•	Review low-profit product categories.
•	Investigate regions and months with higher delayed-order percentages.
•	Review cancelled orders with negative profit.
•	Compare transportation costs with service requirements.
Limitations
This is a sample dataset used for learning and portfolio purposes. The currency is unspecified, supplier identifiers and names are inconsistent, and promised delivery dates are unavailable. Therefore, the analysis cannot establish contractual on-time delivery performance or verified real-company results.

SQL Analysis Screenshots
The following screenshots show the SQL queries and their results from the project.
1.	Overall Project Summary — Total orders and profitability.
2.	Order Status Analysis — Distribution of order statuses.
3.	Profit by Product Category — Category-level profitability.
4.	Profit by Region — Regional profit comparison.
5.	Monthly Profit Analysis — Monthly profit trends.
6.	Delayed Orders by Region — Delayed order counts across regions.
7.	Loss-Making Orders — Orders with negative profit.
8.	Top 10 Products by Profit — Highest-profit products.
Screenshots are available in the 04_Screenshots folder.

