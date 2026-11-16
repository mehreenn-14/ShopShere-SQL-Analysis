SELECT
    region, segment, COUNT(*) AS customers 
FROM customers
GROUP BY region, segment
ORDER BY region, customers DESC