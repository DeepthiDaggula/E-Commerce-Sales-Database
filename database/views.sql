USE ecommerce_db;

-- View 1: Customer Orders
CREATE VIEW customer_orders AS
SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    o.order_id,
    o.order_date,
    o.total_amount
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id;

-- View 2: Product Details
CREATE VIEW product_details AS
SELECT
    p.product_id,
    p.product_name,
    c.category_name,
    p.price,
    p.stock
FROM Products p
JOIN Categories c
ON p.category_id = c.category_id;
