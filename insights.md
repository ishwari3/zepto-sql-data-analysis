# Zepto SQL Data Analysis: Key Insights

## 1. Project Overview

This project explores Zepto's product dataset using PostgreSQL to analyze product pricing, discounts, stock availability, and inventory characteristics.

The analysis uses SQL queries to examine product-level and category-level patterns and identify insights that may support inventory and pricing decisions.

## 2. Analysis and Business Implications

### 2.1 Product Discounts and Value

**Analysis:** Identified the top 10 products with the highest discount percentages.

**Business relevance:**

* Helps identify products receiving the largest discounts.
* Provides a starting point for evaluating promotional strategies.
* Can help investigate whether high discounts are concentrated among particular products.



### 2.2 High-Priced Products That Are Out of Stock

**Analysis:** Identified out-of-stock products with an MRP greater than ₹300.

**Business relevance:**

* Highlights potentially valuable products that are currently unavailable.
* Helps identify products that may deserve further stock availability investigation.
* Provides information for reviewing inventory replenishment priorities.



### 2.3 Estimated Inventory Value by Category

**Analysis:** Calculated estimated inventory value by multiplying discounted selling prices by available quantities and aggregating by category.

**Business relevance:**

* Helps compare the estimated value of listed inventory across categories.
* Identifies categories with relatively high or low inventory value.
* Can support inventory allocation and stock planning discussions.


### 2.4 High-MRP Products with Low Discounts

**Analysis:** Filtered products with an MRP above ₹500 and discount percentages below 10%.

**Business relevance:**

* Identifies relatively expensive products receiving limited discounts.
* Supports further investigation of premium pricing strategies.
* Can help examine how discounts vary across product price ranges.


### 2.5 Categories with the Highest Average Discounts

**Analysis:** Compared average discount percentages across categories and selected the top five.

**Business relevance:**

* Reveals which categories have higher average discounts.
* Helps identify categories where promotional activity may be more pronounced.
* Provides a basis for further analysis of category-level pricing strategies.



### 2.6 Price per Gram Analysis

**Analysis:** Calculated the price per gram for products weighing at least 100 grams and sorted them by unit price.

**Business relevance:**

* Allows comparison of product prices while accounting for differences in package weight.
* Helps identify products with relatively low or high prices per gram.
* Can support unit-price comparisons when evaluating product value.


### 2.7 Product Weight Segmentation

**Analysis:** Grouped products into three weight segments:

* Low: Below 1,000 grams
* Medium: 1,000 to below 5,000 grams
* Bulk: 5,000 grams and above

**Business relevance:**

* Provides a simple way to categorize products by weight.
* May help support packaging, storage, and logistics analysis.
* Creates a foundation for comparing inventory characteristics across product segments.



### 2.8 Total Inventory Weight by Category

**Analysis:** Calculated total inventory weight for each category using product weight and available quantity.

**Business relevance:**

* Highlights categories that account for relatively large amounts of inventory weight.
* Can inform storage capacity and inventory handling discussions.
* May help identify categories worth examining for logistics optimization.


## 3. Overall Observations

The project demonstrates how SQL can be used to explore product-level data and summarize it into business-relevant measures.

The analysis focuses on three major areas:

* **Pricing and promotions:** Product discounts, premium pricing, and unit-price comparisons.
* **Inventory availability and value:** Stock availability and estimated inventory value by category.
* **Inventory characteristics:** Product weight classification and category-wise inventory weight.

The results can be used as a starting point for more detailed analysis of product assortment, promotional strategies, and inventory management.

## 4. Limitations

* The analysis is based on the available dataset and does not establish actual customer demand.
* Estimated inventory value is not equivalent to realized sales or profit.
* High discounts do not necessarily mean that a product offers the best overall value.
* Stock availability at one point in time does not reveal historical stock movement.
* The analysis does not include operating costs, sales history, or customer-level behavior.

## 5. Conclusion

This project demonstrates the use of PostgreSQL for data exploration, cleaning, aggregation, and business-oriented analysis.

By translating raw product data into structured queries and interpretable measures, the project provides a foundation for further investigation into pricing patterns, product availability, and inventory characteristics.
