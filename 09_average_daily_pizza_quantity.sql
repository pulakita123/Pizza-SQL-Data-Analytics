SELECT
    ROUND(AVG(daily_quantity), 2) AS avg_pizzas_per_day
FROM (
    SELECT
        o.date,
        SUM(od.quantity) AS daily_quantity
    FROM orders o
    JOIN order_details od
        ON o.order_id = od.order_id
    GROUP BY o.date
) AS daily_sales;