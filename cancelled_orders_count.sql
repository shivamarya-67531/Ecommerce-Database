SELECT COUNT(*) AS cancelled_orders_count
FROM orders
WHERE order_status = 'Cancelled';
