CREATE DATABASE ecommerce_analysis;

USE ecommerce_analysis;

SHOW DATABASES;

SHOW GLOBAL VARIABLES LIKE 'local_infile';
SET GLOBAL local_infile = 1;

USE ecommerce_analysis;

TRUNCATE TABLE online_retail;

USE ecommerce_analysis;

CREATE TABLE online_retail (
    InvoiceNo VARCHAR(20),
    StockCode VARCHAR(20),
    Description TEXT,
    Quantity INT,
    InvoiceDate DATETIME,
    UnitPrice DOUBLE,
    CustomerID DOUBLE,
    Country VARCHAR(100),
    Revenue DOUBLE,
    Month INT,
    Year INT,
    YearMonth VARCHAR(7)
);

SHOW TABLES;

SELECT COUNT(*) 
FROM online_retail;
USE ecommerce_analysis;
USE ecommerce_analysis;

LOAD DATA LOCAL INFILE
'C:/Users/MD Naseeruddin Amaan.NUVOBOOK_V1/Desktop/Ecommerce_Sales_Analysis/data/cleaned_online_retail.csv'

INTO TABLE online_retail

FIELDS TERMINATED BY ','
ENCLOSED BY '"'

LINES TERMINATED BY '\n'

IGNORE 1 ROWS

(InvoiceNo, StockCode, Description, Quantity,
 InvoiceDate, UnitPrice, CustomerID, Country,
 Revenue, Month, Year, YearMonth);
 
 SELECT COUNT(*) AS Total_Records
FROM ecommerce_analysis.online_retail;
DESCRIBE online_retail;

SELECT InvoiceDate, YearMonth
FROM online_retail
LIMIT 10;

SELECT YearMonth, COUNT(*) AS Total_Records
FROM online_retail
GROUP BY YearMonth
ORDER BY YearMonth;

SELECT
    COUNT(*) AS Total_Records,
    ROUND(SUM(Revenue), 2) AS Total_Revenue,
    COUNT(DISTINCT InvoiceNo) AS Total_Orders,
    COUNT(DISTINCT CustomerID) AS Total_Customers
FROM online_retail;

SELECT
    Country,
    ROUND(SUM(Revenue), 2) AS Total_Revenue
FROM online_retail
GROUP BY Country
ORDER BY Total_Revenue DESC
LIMIT 10;

SELECT
    YearMonth,
    ROUND(SUM(Revenue), 2) AS Monthly_Revenue
FROM online_retail
GROUP BY YearMonth
ORDER BY YearMonth;

SELECT
    Description,
    ROUND(SUM(Revenue), 2) AS Total_Revenue,
    SUM(Quantity) AS Total_Quantity_Sold
FROM online_retail
GROUP BY Description
ORDER BY Total_Revenue DESC
LIMIT 10;

SELECT
    CustomerID,
    COUNT(DISTINCT InvoiceNo) AS Total_Orders,
    ROUND(SUM(Revenue), 2) AS Total_Spent
FROM online_retail
GROUP BY CustomerID
ORDER BY Total_Spent DESC
LIMIT 10;

SELECT
    CASE
        WHEN Order_Count = 1 THEN 'One-Time Customer'
        ELSE 'Repeat Customer'
    END AS Customer_Type,
    COUNT(*) AS Number_Of_Customers
FROM (
    SELECT
        CustomerID,
        COUNT(DISTINCT InvoiceNo) AS Order_Count
    FROM online_retail
    GROUP BY CustomerID
) AS Customer_Orders
GROUP BY Customer_Type;