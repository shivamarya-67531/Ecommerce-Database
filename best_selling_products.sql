SELECT p.product_name, SUM(oi.quantity) total_solds,
	SUM(p.price * oi.quantity) AS revenue
FROM order_items oi
JOIN products p 
	ON p.product_id = oi.product_id
GROUP BY p.product_name
ORDER BY total_solds DESC;