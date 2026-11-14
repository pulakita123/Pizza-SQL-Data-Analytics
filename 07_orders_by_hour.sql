SELECT
    HOUR(time) AS order_hour,
    COUNT(DISTINCT order_id) AS total_orders
FROM orders
GROUP BY HOUR(time)
ORDER BY order_hour;