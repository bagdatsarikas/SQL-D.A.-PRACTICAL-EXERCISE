


-- retrieve all customers 

SELECT * FROM customers;

-- Retrieve Only First Name and Last Name of Customers

SELECT first_name, Last_name 
FROM customers;


-- Find Orders with a Total Amount Greater Than 100

SELECT * 
FROM orders 
WHERE total_amount>100;

-- Find Customers Who Registered After January 1, 2024

SELECT * 
FROM customers
WHERE created_at > '2024-01-01';


-- Retrieve All Orders for a Specific Customer (e.g., customer_id = 5)

SELECT * 
FROM orders
WHERE customer_id = 5; 

-- Join Customers and Orders to See Who Placed Which Order

SELECT c.first_name, c.last_name
FROM customers c
JOIN orders o 
ON c.customer_id = o.customer_id;

-- Find Unpaid Orders (No Matching Payment Record)

SELECT 
FROM orders o
JOIN payments p 
ON p.order_id = o.order_id
WHERE payment_Id IS NULL ; 


-- Find Payments Made Using 'Credit Card'

SELECT * 
FROM payments 
Where payment_method = 'Credit Card';


-- Retrieve Unique Payment Methods

SELECT DISTINCT payment_method 
FROM payments; 


-- Find Orders Placed on a Specific Date (e.g., January 15, 2024)


SELECT * 
FROM orders
WHERE order_date =  '2024-01-15';


-- Find Orders Placed Between '2024-01-01' AND '2024-01-31';

SELECT * 
FROM orders
WHERE order_date BETWEEN '2024-01-01' AND '2024-01-31';

-- RETRIEVE THE LATEST 5 ORDERS 

SELECT * 
FROM orders
ORDER BY order_date DESC
LIMIT 5;


-- Count the Total Number of Orders

SELECT COUNT(*) AS total_orders FROM orders;

-- Find the Maximum and Minimum Order Amount

SELECT MAX(total_amount) AS max_order, 
			MIN(total_amount) AS min_order
FROM orders; 


-- Find the Average Order Amount

SELECT AVG(total_amount) AS avg_amount
FROM orders;

-- Retrieve Orders Sorted by Total Amount (Highest to Lowest)

SELECT * 
FROM orders
ORDER BY total_amount DESC;

-- Count the Number of Customers Who Registered in 2024

SELECT COUNT(*) AS total_customers
FROM customers
WHERE EXTRACT (YEAR FROM created_at) = 2024;


-- Retrieve the First 10 Customers (Alphabetically by Last Name)

SELECT * FROM customers
ORDER BY last_name ASC
LIMIT 10;

-- Retrieve the Most Recent Payment 

SELECT * 
FROM payments
ORDER BY payment_date DESC
LIMIT 1; 



