-- ==========================================
-- Sample Data for Categories
-- ==========================================

INSERT INTO Categories(category_name)
VALUES
('Electronics'),
('Fashion'),
('Books'),
('Home & Kitchen'),
('Sports'),
('Beauty'),
('Toys'),
('Groceries'),
('Furniture'),
('Accessories');

-- ==========================================
-- Sample Data for Customers
-- ==========================================

INSERT INTO Customers(first_name,last_name,email,phone,city,state,registration_date)
VALUES
('Rahul','Sharma','rahul@gmail.com','9876543210','Hyderabad','Telangana','2024-01-15'),
('Sneha','Reddy','sneha@gmail.com','9876543211','Vijayawada','Andhra Pradesh','2024-02-20'),
('Amit','Kumar','amit@gmail.com','9876543212','Bangalore','Karnataka','2024-03-05'),
('Priya','Singh','priya@gmail.com','9876543213','Chennai','Tamil Nadu','2024-04-10'),
('Arjun','Patel','arjun@gmail.com','9876543214','Mumbai','Maharashtra','2024-05-25'),
('Anjali','Verma','anjali@gmail.com','9876543215','Delhi','Delhi','2024-06-18'),
('Kiran','Naidu','kiran@gmail.com','9876543216','Guntur','Andhra Pradesh','2024-07-02'),
('Meera','Joshi','meera@gmail.com','9876543217','Pune','Maharashtra','2024-08-11'),
('Rohit','Das','rohit@gmail.com','9876543218','Kolkata','West Bengal','2024-09-15'),
('Divya','Rao','divya@gmail.com','9876543219','Visakhapatnam','Andhra Pradesh','2024-10-05');

-- ==========================================
-- Sample Data for Products
-- ==========================================

INSERT INTO Products(product_name,category_id,price,stock)
VALUES
('Laptop',1,75000,20),
('Smartphone',1,30000,50),
('Bluetooth Headphones',1,2500,60),
('Smart Watch',1,4500,40),
('Men T-Shirt',2,799,100),
('Women Jeans',2,1499,80),
('SQL Programming Book',3,699,40),
('Python Programming Book',3,899,35),
('Mixer Grinder',4,3500,25),
('Football',5,1200,50);

-- ==========================================
-- Sample Data for Orders
-- ==========================================

INSERT INTO Orders(customer_id,order_date,total_amount,order_status)
VALUES
(1,'2024-06-01',75800,'Delivered'),
(2,'2024-06-05',30000,'Delivered'),
(3,'2024-06-10',2500,'Shipped'),
(4,'2024-06-15',1499,'Pending'),
(5,'2024-06-20',3500,'Delivered'),
(6,'2024-06-25',4500,'Delivered'),
(7,'2024-07-01',1200,'Shipped'),
(8,'2024-07-05',699,'Delivered'),
(9,'2024-07-10',899,'Pending'),
(10,'2024-07-15',799,'Delivered');

-- ==========================================
-- Sample Data for Order Items
-- ==========================================

INSERT INTO Order_Items(order_id,product_id,quantity,price)
VALUES
(1,1,1,75000),
(1,5,1,799),
(2,2,1,30000),
(3,3,1,2500),
(4,6,1,1499),
(5,9,1,3500),
(6,4,1,4500),
(7,10,1,1200),
(8,7,1,699),
(9,8,1,899),
(10,5,1,799);

-- ==========================================
-- Sample Data for Payments
-- ==========================================

INSERT INTO Payments(order_id,payment_method,payment_date,amount,payment_status)
VALUES
(1,'Credit Card','2024-06-01',75800,'Completed'),
(2,'UPI','2024-06-05',30000,'Completed'),
(3,'Debit Card','2024-06-10',2500,'Completed'),
(4,'Cash on Delivery','2024-06-15',1499,'Pending'),
(5,'Net Banking','2024-06-20',3500,'Completed'),
(6,'UPI','2024-06-25',4500,'Completed'),
(7,'Credit Card','2024-07-01',1200,'Completed'),
(8,'UPI','2024-07-05',699,'Completed'),
(9,'Cash on Delivery','2024-07-10',899,'Pending'),
(10,'Debit Card','2024-07-15',799,'Completed');
