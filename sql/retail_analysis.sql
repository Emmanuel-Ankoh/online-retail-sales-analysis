
-- Project: Online Retail Sales Analysis
-- Purpose: Explore product descriptions and pricing.

-- Query 1: Find the 10 highest-priced products
-- whose descriptions start with WHITE.

SELECT Description, UnitPrice
FROM online_retail
WHERE Description LIKE 'WHITE%'
  AND Description IS NOT NULL
ORDER BY UnitPrice DESC
LIMIT 10;


-- Query 2: Top 10 countries by total revenue

SELECT
    Country,
    SUM(Quantity * UnitPrice) AS TotalRevenue
FROM online_retail
WHERE InvoiceNo NOT LIKE 'C%'
  AND Quantity > 0
  AND UnitPrice > 0
GROUP BY Country
ORDER BY TotalRevenue DESC
LIMIT 10;

-- Query 4: Calculate Average Order Value
-- Purpose: Estimate the average value per qualifying invoice.

SELECT
    AVG(OrderValue) AS AverageOrderValue
FROM (
    SELECT
        InvoiceNo,
        SUM(Quantity * UnitPrice) AS OrderValue
    FROM online_retail
    WHERE InvoiceNo NOT LIKE 'C%'
      AND Quantity > 0
      AND UnitPrice > 0
    GROUP BY InvoiceNo
);

SELECT
    StockCode,
    Description,
    SUM(Quantity * UnitPrice) AS TotalRevenue
FROM online_retail
WHERE InvoiceNo NOT LIKE 'C%'
  AND Quantity > 0
  AND UnitPrice > 0
  AND Description IS NOT NULL
GROUP BY StockCode, Description
ORDER BY TotalRevenue DESC
LIMIT 5;
