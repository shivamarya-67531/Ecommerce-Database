SELECT c.name, SUM(pay.amount) AS total_spend
FROM orders o
JOIN customers c
ON c.customer_id = o.customer_id
JOIN payments pay
ON o.order_id = pay.order_id
GROUP BY name
ORDER BY total_spend DESC;