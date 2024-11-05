-- Calculate the percentage contribution of each pizza type to total revenue.
SELECT 
    pizza_types.category,
    SUM(order_details.quantity * pizzas.price) AS total_sales
FROM
    pizza_type
        JOIN
    pizzas ON pizza_type.pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_type.category
ORDER BY revenue DESC;