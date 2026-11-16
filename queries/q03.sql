SELECT
    status,
    COUNT(*) AS orders,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM orders),
        1
    ) AS pct_of_orders
FROM orders
GROUP BY status;
