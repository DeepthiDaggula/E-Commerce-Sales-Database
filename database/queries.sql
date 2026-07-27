-- ==========================================
-- BASIC SELECT QUERIES
-- ==========================================

-- 1. Display all customers
SELECT * FROM Customers;

-- 2. Display all products
SELECT * FROM Products;

-- 3. Display all orders
SELECT * FROM Orders;

-- 4. Display all payments
SELECT * FROM Payments;

-- 5. Display all categories
SELECT * FROM Categories;

-- ==========================================
-- WHERE CLAUSE
-- ==========================================

-- 6. Products above 1000
SELECT * FROM Products
WHERE price > 1000;

-- 7. Orders with Delivered status
SELECT * FROM Orders
WHERE order_status='Delivered';

-- 8. Customers from Andhra Pradesh
SELECT * FROM Customers
WHERE state='Andhra Pradesh';

-- ==========================================
-- ORDER BY
-- ==========================================

-- 9. Products by price ascending
SELECT * FROM Products
ORDER BY price ASC;

-- 10. Products by price descending
SELECT * FROM Products
ORDER BY price DESC;

-- ==========================================
-- AGGREGATE FUNCTIONS
-- ==========================================

-- 11. Total products
SELECT COUNT(*) AS Total_Products
FROM Products;

-- 12. Total customers
SELECT COUNT(*) AS Total_Customers
FROM Customers;

-- 13. Maximum product price
SELECT MAX(price) AS Highest_Price
FROM Products;

-- 14. Minimum product price
SELECT MIN(price) AS Lowest_Price
FROM Products;

-- 15. Average product price
SELECT AVG(price) AS Average_Price
FROM Products;

-- ==========================================
-- GROUP BY
-- ==========================================

-- 16. Products in each category
SELECT category_id, COUNT(*) AS Total_Products
FROM Products
GROUP BY category_id;

-- ==========================================
-- INNER JOIN
-- ==========================================

-- 17. Customer Orders
SELECT
c.first_name,
c.last_name,
o.order_id,
o.order_date,
o.total_amount
FROM Customers c
INNER JOIN Orders o
ON c.customer_id=o.customer_id;

-- ==========================================
-- LEFT JOIN
-- ==========================================

-- 18. Customers and Orders
SELECT
c.first_name,
o.order_id
FROM Customers c
LEFT JOIN Orders o
ON c.customer_id=o.customer_id;

-- ==========================================
-- RIGHT JOIN
-- ==========================================

SELECT
p.product_name,
oi.quantity
FROM Order_Items oi
RIGHT JOIN Products p
ON oi.product_id=p.product_id;

-- ==========================================
-- HAVING
-- ==========================================

SELECT category_id,
COUNT(*) AS Total
FROM Products
GROUP BY category_id
HAVING COUNT(*)>=1;

-- ==========================================
-- SUBQUERY
-- ==========================================

SELECT *
FROM Products
WHERE price>(
SELECT AVG(price)
FROM Products);

-- ==========================================
-- SALES REPORT
-- ==========================================

SELECT
SUM(total_amount) AS Total_Sales
FROM Orders;

-- ==========================================
-- TOP SELLING PRODUCTS
-- ==========================================

SELECT
p.product_name,
SUM(oi.quantity) AS Quantity_Sold
FROM Products p
JOIN Order_Items oi
ON p.product_id=oi.product_id
GROUP BY p.product_name
ORDER BY Quantity_Sold DESC;

-- ==========================================
-- CUSTOMER PURCHASE HISTORY
-- ==========================================

SELECT
c.first_name,
c.last_name,
o.order_id,
o.total_amount
FROM Customers c
JOIN Orders o
ON c.customer_id=o.customer_id;
