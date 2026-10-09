SELECT c.customer_name, o.order_date, o.total_amount
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE c.city = 'Penang';

--Bonus
SELECT c.customer_name, AVG(o.total_amount) AS avg_total_per_customer
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE c.city = 'Penang'
GROUP BY c.customer_id, c.customer_name;