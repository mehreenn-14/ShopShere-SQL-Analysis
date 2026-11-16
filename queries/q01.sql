SELECT
    customer_id,
    MAX(order_date) AS last_order_date,
    DATE '2026-07-01' - MAX(order_date) AS no_of_days_since_last_order,
COUNT(*) AS lifetime_orders
FROM orders
GROUP BY customer_id
HAVING MAX(order_date) < DATE '2026-07-01' - 90
ORDER BY no_of_days_since_last_order DESC;
