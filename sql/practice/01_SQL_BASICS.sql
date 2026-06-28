- ONLINE STORE DATASET


CREATE DATABASE online_store;
USE online_store;

-- CUSTOMERS TABLE
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50),
    age INT
);

INSERT INTO customers VALUES
(1, 'Rahul', 'Mumbai', 28),
(2, 'Priya', 'Pune', 24),
(3, 'Sneha', 'Delhi', 31),
(4, 'Amay', 'Mumbai', 22),
(5, 'Pooja', 'Bangalore', 26),
(6, 'Rohit', 'Pune', 35),
(7, 'Karan', 'Delhi', 29),
(8, 'Meera', 'Mumbai', 27);

-- PRODUCTS TABLE
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

INSERT INTO products VALUES
(1, 'iPhone 15', 'Electronics', 79999),
(2, 'Samsung TV', 'Electronics', 45999),
(3, 'Nike Shoes', 'Fashion', 4999),
(4, 'Levis Jeans', 'Fashion', 2999),
(5, 'Harry Potter Book', 'Books', 499),
(6, 'Mixer Grinder', 'Appliances', 3499),
(7, 'Headphones', 'Electronics', 1999),
(8, 'Yoga Mat', 'fitness', 799);

-- ORDERS TABLE
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    order_date DATE,
    status VARCHAR(20)
);

INSERT INTO orders VALUES
(101, 1, 1, 1, '2024-01-15', 'Delivered'),
(102, 2, 3, 2, '2024-01-18', 'Delivered'),
(103, 3, 2, 1, '2024-02-01', 'Delivered'),
(104, 4, 5, 3, '2024-02-14', 'Cancelled'),
(105, 1, 7, 1, '2024-03-05', 'Delivered'),
(106, 5, 4, 2, '2024-03-18', 'Delivered'),
(107, 6, 6, 1, '2024-04-02', 'Pending'),
(108, 7, 1, 1, '2024-04-15', 'Delivered'),
(109, 8, 8, 2, '2024-05-01', 'Delivered'),
(110, 2, 2, 1, '2024-05-10', 'Pending'),
(111, 3, 7, 1, '2024-05-20', 'Delivered'),
(112, 4, 3, 1, '2024-06-01', 'Cancelled');

SELECT COUNT(*) FROM customers;
SELECT COUNT(*) FROM orders;
SELECT COUNT(*) FROM products;

-- Level 1 — Easy (SELECT, WHERE, DISTINCT)
-- Q1. Display all customers from Mumbai.
SELECT*FROM customers WHERE city = 'Mumbai';

-- Q2. Show all products under category 'Electronics'.
SELECT*FROM products WHERE category = 'Electronics';

-- Q3. Display all unique cities from the customers table.
SELECT DISTINCT city
FROM customers;

-- Q4. Show all orders that have status 'Delivered'.
SELECT*FROM orders WHERE status = 'Delivered';

-- Q5. Display all products where price is less than 5000.
SELECT*FROM products WHERE price < 5000;


-- Level 2 — Medium (ORDER BY, LIMIT)
-- Q6. Show top 3 most expensive products.
SELECT * FROM products ORDER BY price DESC LIMIT  3;

-- Q7. Display all customers sorted by age from youngest to oldest.
SELECT * FROM customers  ORDER BY age ASC;

-- Q8. Show the most recent order from the orders table. (Hint: ORDER BY order_date)
SELECT * FROM orders ORDER BY order_date DESC LIMIT 1 ;

-- Level 3 — Aggregates + GROUP BY
-- Q9. Find the total number of orders placed.
SELECT COUNT(order_id) FROM orders ;
 
-- Q10. Find the average price of all products.
SELECT AVG(price) FROM products;

-- Q11. Find the most expensive product price.
SELECT MAX(price) FROM products;

-- Q12. Count how many orders were placed per status (Delivered, Cancelled, Pending).
SELECT status, COUNT(*) AS total_orders
FROM orders
GROUP BY status;

-- Q13. Find total quantity sold per product_id.
SELECT product_id, SUM(quantity) AS total_quantity
FROM orders
GROUP BY product_id;

-- Q14. Show only those product_ids where total quantity sold is more than 1
SELECT product_id, SUM(quantity) AS total_quantity
FROM orders
GROUP BY product_id
HAVING SUM(quantity)>1 ;  -- complete this part!