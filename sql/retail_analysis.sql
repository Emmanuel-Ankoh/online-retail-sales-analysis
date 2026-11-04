
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
