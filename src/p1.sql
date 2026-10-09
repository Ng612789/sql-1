-- 1. Create employees table
CREATE TABLE employees (
    id INTEGER,
    name TEXT,
    position TEXT,
    department TEXT,
    salary NUMERIC
);

-- 2. Create customers table
CREATE TABLE customers (
    customer_id INTEGER,
    customer_name TEXT,
    city TEXT
);

-- 3. Create inventories table
CREATE TABLE inventories (
    product_id INTEGER,
    product_name TEXT,
    quantity INTEGER,
    price NUMERIC
);

-- 4. Create orders table
CREATE TABLE orders (
    order_id INTEGER,
    order_date DATE,
    customer_id INTEGER,
    total_amount NUMERIC
);

-- 5. Create sales table
CREATE TABLE sales (
    order_id INTEGER,
    customer_id INTEGER,
    product_id INTEGER,
    quantity INTEGER,
    sale_date DATE
);

-- Insert data into employees
INSERT INTO employees (id, name, position, department, salary)
VALUES
(1, 'John', 'Manager', 'Sales', 5000),
(2, 'Mary', 'Developer', 'IT', 4000),
(3, 'David', 'Accountant', 'Finance', 3500),
(4, 'Sarah', 'Developer', 'IT', 4200),
(5, 'Peter', 'Sales Executive', 'Sales', 3000);

-- Insert data into customers
INSERT INTO customers (customer_id, customer_name, city)
VALUES
(101, 'Alice', 'Kuala Lumpur'),
(102, 'Bob', 'Penang'),
(103, 'Charlie', 'Johor Bahru'),
(104, 'Diana', 'Penang'),
(105, 'Eric', 'Melaka');

-- Insert data into inventories
INSERT INTO inventories (product_id, product_name, quantity, price)
VALUES
(201, 'Laptop', 50, 2500),
(202, 'Mouse', 100, 50),
(203, 'Keyboard', 80, 120),
(204, 'Monitor', 30, 800),
(205, 'Headphones', 60, 150);

-- Insert data into orders
INSERT INTO orders (order_id, order_date, customer_id, total_amount)
VALUES
(1001, '2026-10-01', 101, 2550),
(1002, '2026-10-02', 102, 800),
(1003, '2026-10-03', 103, 120),
(1004, '2026-10-04', 104, 2650),
(1005, '2026-10-05', 101, 150);

-- Insert data into sales
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date)
VALUES
(1001, 101, 201, 1, '2026-10-01'),
(1001, 101, 202, 1, '2026-10-01'),
(1002, 102, 204, 1, '2026-10-02'),
(1003, 103, 203, 1, '2026-10-03'),
(1004, 104, 201, 1, '2026-10-04');