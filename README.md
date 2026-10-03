# Zepto SQL Data Analysis

## Project Overview

This project focuses on analyzing Zepto's dataset using SQL and PostgreSQL. The goal is to explore the data, answer business-related questions, and extract meaningful insights through SQL queries.

## Tools & Technologies

* **PostgreSQL** – Database management and querying
* **pgAdmin 4** – SQL query execution and database interface
* **SQL** – Data exploration and analysis

## Dataset

The project uses a CSV dataset containing Zepto-related data, which was imported into PostgreSQL for analysis.

## Analysis

The project involves exploring the dataset and performing SQL-based analysis to answer business questions.

SQL queries are included in the repository for reference.

## Project Files

* `zepto_v2.csv` – Raw dataset used for analysis
* `analysis.sql` – SQL queries written for data analysis

## Key Learnings

* Working with datasets in PostgreSQL
* Writing and executing SQL queries
* Exploring data to answer business questions
* Using pgAdmin for database analysis



## Business Questions Explored

This project answers the following business questions using SQL:

1. **Best-Value Products:** Which are the top 10 products offering the highest discount percentages?
2. **High-Priced Out-of-Stock Products:** Which products have an MRP greater than ₹300 and are currently out of stock?
3. **Estimated Revenue by Category:** What is the estimated inventory value of each category based on discounted selling prices and available quantities?
4. **Premium Products with Low Discounts:** Which products have an MRP above ₹500 but offer a discount of less than 10%?
5. **Top Discount Categories:** Which five product categories have the highest average discount percentage?
6. **Price per Gram Analysis:** Which products weighing at least 100 grams offer the lowest price per gram?
7. **Product Weight Segmentation:** How can products be classified into Low, Medium, and Bulk weight categories?
8. **Inventory Weight by Category:** What is the total available inventory weight for each product category?

## SQL Concepts Used

The project demonstrates the following PostgreSQL concepts:

* **Database and Table Management:** `CREATE TABLE`, `DROP TABLE`, primary keys, and data types.
* **Data Exploration:** `SELECT`, `DISTINCT`, `LIMIT`, `ORDER BY`, and `COUNT`.
* **Data Cleaning:** `IS NULL`, `DELETE`, and `UPDATE`.
* **Filtering:** `WHERE`, comparison operators, and logical operators such as `AND` and `OR`.
* **Aggregation:** `GROUP BY`, `HAVING`, `SUM`, `AVG`, and `ROUND`.
* **Conditional Logic:** `CASE WHEN` for weight-based product classification.
* **Calculated Fields:** Arithmetic expressions to calculate price per gram, estimated inventory value, and total inventory weight.

## Project Workflow

1. **Database Setup:** Created a PostgreSQL table to store the Zepto product dataset.
2. **Data Import:** Imported the CSV dataset into PostgreSQL using pgAdmin.
3. **Data Exploration:** Examined the dataset structure, row count, missing values, product categories, stock availability, and repeated product names.
4. **Data Cleaning:** Identified zero-priced records, removed products with zero MRP, and converted prices from paise to rupees.
5. **Business Analysis:** Wrote and executed SQL queries to answer eight business questions involving discounts, pricing, stock availability, and inventory.
6. **Insights:** Used the query results to explore product pricing patterns, discount distribution, and inventory characteristics.

## Key Analytical Areas

* Product discount and pricing analysis
* Stock availability and high-priced product identification
* Category-wise estimated inventory value
* Average discount comparison across categories
* Unit-price analysis using price per gram
* Product weight segmentation
* Category-wise inventory weight analysis

**Note:** Estimated inventory value is calculated using the available quantity multiplied by the discounted selling price. It represents the value of listed inventory, not actual realized sales revenue.



