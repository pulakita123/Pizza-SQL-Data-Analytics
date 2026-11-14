SELECT
    ROUND(SUM(od.quantity * p.price), 2) AS total_revenue
FROM order_details od
JOIN pizzas p
    ON od.pizza_id = p.pizza_id;