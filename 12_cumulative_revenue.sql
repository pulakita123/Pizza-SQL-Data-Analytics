WITH daily_revenue AS (
    SELECT
        o.date,
        SUM(od.quantity * p.price) AS revenue
    FROM orders o
    JOIN order_details od
        ON o.order_id = od.order_id
    JOIN pizzas p
        ON od.pizza_id = p.pizza_id
    GROUP BY o.date
)

SELECT
    date,
    ROUND(revenue, 2) AS daily_revenue,
    ROUND(
        SUM(revenue) OVER (
            ORDER BY date
            ROWS BETWEEN UNBOUNDED PRECEDING
            AND CURRENT ROW
        ),
        2
    ) AS cumulative_revenue
FROM daily_revenue
ORDER BY date;