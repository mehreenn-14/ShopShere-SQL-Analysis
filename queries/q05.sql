SELECT
    COALESCE(promo_code, 'No promo') AS promo_code,
    COUNT(*) AS orders,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*)
         FROM orders
         WHERE order_date >= DATE '2025-01-01'
           AND order_date < DATE '2026-01-01'),
        1
    ) AS pct_of_2025_orders
FROM orders
WHERE order_date >= DATE '2025-01-01'
  AND order_date < DATE '2026-01-01'
GROUP BY COALESCE(promo_code, 'No promo')
ORDER BY orders DESC;