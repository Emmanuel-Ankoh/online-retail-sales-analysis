
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
