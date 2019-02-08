-- 1.
SELECT o.*, e.first_name, e.last_name
FROM orders o
LEFT JOIN employees e ON o.employee_id = e.id

-- 2.
SELECT o.*
FROM orders o
LEFT JOIN customers c ON o.customer_id = c.id
WHERE c.last_name = 'Lee'

-- 3.
SELECT o.ship_address, o.ship_city, o.ship_state_province, o.ship_country_region, o.ship_zip_postal_code
FROM orders o
LEFT JOIN order_details od ON o.id = od.order_id
LEFT JOIN products p ON od.product_id = p.id
WHERE p.product_name = 'Northwind Traders Curry Sauce'

-- 4.
SELECT p.*
FROM products p
LEFT JOIN order_details od ON od.product_id = p.id
LEFT JOIN orders o ON o.id = od.order_id
WHERE o.id = 42

-- 5.
SELECT p.product_name
FROM suppliers s
LEFT JOIN products p ON s.id = p.supplier_ids
WHERE s.company IN ('Supplier A', 'Supplier C')

-- 6.
SELECT MAX(o.shipping_fee) AS MaxLivraison
FROM orders o
LEFT JOIN customers c ON o.customer_id = c.id
WHERE c.first_name = 'Francisco'

-- 7.
SELECT COUNT(*) AS NbCommande
FROM orders o
LEFT JOIN employees e ON o.employee_id = e.id
WHERE e.email_address = 'nancy@northwindtraders.com'

-- 8.
SELECT DISTINCT c.first_name, c.last_name
FROM customers c
LEFT JOIN orders o ON o.customer_id = c.id
WHERE order_date BETWEEN '2005-02-01' AND '2006-03-01'

-- 9.
SELECT DISTINCT p.*
FROM products p
LEFT JOIN order_details od ON p.id = od.product_id 
LEFT JOIN orders o ON od.order_id = o.id
LEFT JOIN employees e ON o.employee_id = e.id
WHERE e.first_name LIKE 'N%'

-- 10.
SELECT p.* 
FROM products p
LEFT JOIN order_details od ON p.id = od.product_id
WHERE od.id IS NULL