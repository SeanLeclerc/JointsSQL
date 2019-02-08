-- 1.
SELECT o.*, e.first_name, e.last_name
FROM orders o
LEFT JOIN employees e ON o.employee_id = e.id

--2
SELECT o.*
FROM orders o
INNER JOIN customers c ON o.customer_id = c.id
WHERE c.last_name = 'LEE'

--3
SELECT o.ship_address, o.ship_city, o.ship_state_province, o.ship_country_region, o.ship_zip_postal_code
FROM orders o
INNER JOIN order_details od ON o.id = od.order_id
INNER JOIN products p ON od.product_id = p.id 
WHERE p.product_name = 'Northwind Traders Curry Sauce'

