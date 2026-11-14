WITH category_revenue AS (
    SELECT
        pt.category,
        pt.name AS pizza_name,
        SUM(od.quantity * p.price) AS total_revenue
    FROM order_details od
    JOIN pizzas p
        ON od.pizza_id = p.pizza_id
    JOIN pizza_types pt
        ON p.pizza_type_id = pt.pizza_type_id
    GROUP BY
        pt.category,
        pt.name
),

ranked_pizzas AS (
    SELECT
        category,
        pizza_name,
        total_revenue,
        DENSE_RANK() OVER (
            PARTITION BY category
            ORDER BY total_revenue DESC
        ) AS pizza_rank
    FROM category_revenue
)

SELECT
    category,
    pizza_name,
    ROUND(total_revenue, 2) AS total_revenue,
    pizza_rank
FROM ranked_pizzas
WHERE pizza_rank <= 3
ORDER BY category, pizza_rank;