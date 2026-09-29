SELECT p.product_name, SUM(p.price * oi.quantity) AS revenue 
FROM order_items oi 
JOIN products p 
ON p.product_id = oi.product_id 
JOIN orders o 
ON oi.order_id = o.order_id 
WHERE o.order_status = 'Delivered' 
GROUP BY p.product_name 
ORDER BY revenue DESC; 