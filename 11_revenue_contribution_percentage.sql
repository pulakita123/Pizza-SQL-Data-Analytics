WITH pizza_revenue AS (
    SELECT
        pt.name AS pizza_name,
        SUM(od.quantity * p.price) AS total_revenue
    FROM order_details od
    JOIN pizzas p
        ON od.pizza_id = p.pizza_id
    JOIN pizza_types pt
        ON p.pizza_type_id = pt.pizza_type_id
    GROUP BY pt.name
)

SELECT
    pizza_name,
    ROUND(total_revenue, 2) AS total_revenue,
    ROUND(
        total_revenue * 100.0 /
        SUM(total_revenue) OVER(),
        2
    ) AS revenue_percentage
FROM pizza_revenue
ORDER BY revenue_percentage DESC;