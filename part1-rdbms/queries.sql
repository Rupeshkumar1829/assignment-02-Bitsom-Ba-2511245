-- Q1: List all customers with total order value
SELECT customer_id, SUM(total_amount)
FROM Orders
GROUP BY customer_id;

-- Q2: Top 3 products by quantity sold
SELECT product_id, SUM(quantity)
FROM Order_Items
GROUP BY product_id
ORDER BY SUM(quantity) DESC
LIMIT 3;

-- Q3: Count orders per customer
SELECT customer_id, COUNT(order_id)
FROM Orders
GROUP BY customer_id;

-- Q4: Orders above 10000
SELECT *
FROM Orders
WHERE total_amount > 10000
ORDER BY total_amount DESC;

-- Q5: Products never ordered
SELECT product_id
FROM Products
WHERE product_id NOT IN
(SELECT product_id FROM Order_Items);
