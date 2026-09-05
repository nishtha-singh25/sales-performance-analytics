-- Sales Performance Analysis
-- SQL analysis of sales, profit, regions and product categories

-- 1. Total Sales
SELECT 
    SUM(Sales) AS Total_Sales
FROM sales_data;


-- 2. Total Profit
SELECT 
    SUM(Profit) AS Total_Profit
FROM sales_data;


-- 3. Sales by Region
SELECT 
    Region,
    SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Region
ORDER BY Total_Sales DESC;


-- 4. Profit by Category
SELECT 
    Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY Category
ORDER BY Total_Profit DESC;


-- 5. Top 10 Products by Sales
SELECT 
    Sub_Category,
    SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Sub_Category
ORDER BY Total_Sales DESC
LIMIT 10;


-- 6. Monthly Sales Trend
SELECT 
    MONTH(Order_Date) AS Month,
    SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY MONTH(Order_Date)
ORDER BY Month;


-- 7. Average Order Value
SELECT 
    AVG(Sales) AS Average_Order_Value
FROM sales_data;
