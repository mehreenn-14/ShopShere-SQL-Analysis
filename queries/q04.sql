SELECT
    category,
    ROUND(AVG(unit_price),2) AS avg_list_price,
COUNT(*) AS products
FROM products
GROUP BY category
HAVING AVG(unit_price)  > 30;
