-- =====================================================
-- PROJECT: ZEPTO SQL DATA ANALYSIS
-- DATABASE: PostgreSQL
-- TOOL: pgAdmin 4
-- =====================================================


-- =====================================================
-- 1. DATABASE SETUP
-- =====================================================

DROP TABLE IF EXISTS zepto;

CREATE TABLE zepto (
    sku_id SERIAL PRIMARY KEY,
    category VARCHAR(120),
    name VARCHAR(150) NOT NULL,
    mrp NUMERIC(8,2),
    discountPercent NUMERIC(5,2),
    availableQuantity INTEGER,
    discountedSellingPrice NUMERIC(8,2),
    weightInGms INTEGER,
    outOfStock BOOLEAN,
    quantity INTEGER
);


-- =====================================================
-- 2. DATA EXPLORATION
-- =====================================================

-- Q1. Count the total number of records.
SELECT COUNT(*)
FROM zepto;

-- Q2. Preview the first 10 records.
SELECT *
FROM zepto
LIMIT 10;

-- Q3. Identify records containing missing values.
SELECT *
FROM zepto
WHERE name IS NULL
   OR category IS NULL
   OR mrp IS NULL
   OR discountPercent IS NULL
   OR discountedSellingPrice IS NULL
   OR weightInGms IS NULL
   OR availableQuantity IS NULL
   OR outOfStock IS NULL
   OR quantity IS NULL;

-- Q4. List all unique product categories.
SELECT DISTINCT category
FROM zepto
ORDER BY category;

-- Q5. Compare in-stock and out-of-stock products.
SELECT
    outOfStock,
    COUNT(sku_id) AS total_products
FROM zepto
GROUP BY outOfStock;

-- Q6. Identify product names associated with multiple SKUs.
SELECT
    name,
    COUNT(sku_id) AS total_skus
FROM zepto
GROUP BY name
HAVING COUNT(sku_id) > 1
ORDER BY total_skus DESC;


-- =====================================================
-- 3. DATA CLEANING
-- =====================================================

-- Q1. Identify products with zero MRP or selling price.
SELECT *
FROM zepto
WHERE mrp = 0
   OR discountedSellingPrice = 0;

-- Q2. Remove products with zero MRP.
DELETE FROM zepto
WHERE mrp = 0;

-- Q3. Convert prices from paise to rupees.
-- Run this conversion only once on the original data.
UPDATE zepto
SET
    mrp = mrp / 100.0,
    discountedSellingPrice =
        discountedSellingPrice / 100.0;

-- Verify the updated prices.
SELECT
    mrp,
    discountedSellingPrice
FROM zepto;


-- =====================================================
-- 4. BUSINESS ANALYSIS
-- =====================================================

-- Q1. Find the top 10 best-value products
-- based on discount percentage.
SELECT DISTINCT
    name,
    mrp,
    discountPercent
FROM zepto
ORDER BY discountPercent DESC
LIMIT 10;


-- Q2. Find high-MRP products that are out of stock.
SELECT DISTINCT
    name,
    mrp
FROM zepto
WHERE outOfStock = TRUE
  AND mrp > 300
ORDER BY mrp DESC;


-- Q3. Estimate inventory value for each category.
-- Formula: discounted price * available quantity.
SELECT
    category,
    SUM(
        discountedSellingPrice * availableQuantity
    ) AS estimated_inventory_value
FROM zepto
GROUP BY category
ORDER BY estimated_inventory_value;


-- Q4. Find products with MRP above ₹500
-- and discount percentage below 10%.
SELECT DISTINCT
    name,
    mrp,
    discountPercent
FROM zepto
WHERE mrp > 500
  AND discountPercent < 10
ORDER BY mrp DESC, discountPercent DESC;


-- Q5. Identify the five categories
-- with the highest average discount.
SELECT
    category,
    ROUND(AVG(discountPercent), 2) AS avg_discount
FROM zepto
GROUP BY category
ORDER BY avg_discount DESC
LIMIT 5;


-- Q6. Calculate price per gram for products
-- weighing at least 100 grams.
-- Lower price per gram indicates a lower unit price.
SELECT DISTINCT
    name,
    weightInGms,
    discountedSellingPrice,
    ROUND(
        discountedSellingPrice / weightInGms,
        2
    ) AS price_per_gram
FROM zepto
WHERE weightInGms >= 100
ORDER BY price_per_gram;


-- Q7. Classify products based on weight.
SELECT DISTINCT
    name,
    weightInGms,
    CASE
        WHEN weightInGms < 1000 THEN 'Low'
        WHEN weightInGms < 5000 THEN 'Medium'
        ELSE 'Bulk'
    END AS weight_category
FROM zepto;


-- Q8. Calculate total inventory weight
-- for each product category.
SELECT
    category,
    SUM(weightInGms * availableQuantity) AS total_weight
FROM zepto
GROUP BY category
ORDER BY total_weight;
