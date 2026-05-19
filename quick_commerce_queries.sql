CREATE DATABASE quick_commerce_db;
USE quick_commerce_db;
CREATE TABLE blinkit_orders (
    order_id INT,
    customer_id INT,
    city VARCHAR(100),
    product_name VARCHAR(255),
    quantity INT,
    total_amount FLOAT,
    order_date DATE
);

-- Show all tables

SHOW TABLES;

-- Describe table structure

DESCRIBE blinkit_orders;
INSERT INTO blinkit_orders VALUES
(101,1,'Hyderabad','Milk',2,120,'2025-05-01'),
(102,2,'Bangalore','Bread',1,45,'2025-05-01'),
(103,3,'Chennai','Eggs',12,90,'2025-05-02'),
(104,4,'Mumbai','Rice Bag',1,850,'2025-05-03'),
(105,5,'Delhi','Cold Drink',3,150,'2025-05-03'),
(106,6,'Hyderabad','Biscuits',5,200,'2025-05-04'),
(107,7,'Pune','Juice',2,180,'2025-05-05');
SELECT * FROM blinkit_orders;
USE quick_commerce_db;

-- Total Revenue

SELECT SUM(total_amount) AS Total_Revenue
FROM blinkit_orders;

-- Top Selling Products

SELECT 
    product_name,
    SUM(quantity) AS Total_Quantity
FROM blinkit_orders
GROUP BY product_name
ORDER BY Total_Quantity DESC;

-- City Wise Revenue

SELECT 
    city,
    SUM(total_amount) AS Revenue
FROM blinkit_orders
GROUP BY city
ORDER BY Revenue DESC;

-- Total Orders

SELECT COUNT(order_id) AS Total_Orders
FROM blinkit_orders;

-- Average Order Value

SELECT AVG(total_amount) AS Average_Order_Value
FROM blinkit_orders;