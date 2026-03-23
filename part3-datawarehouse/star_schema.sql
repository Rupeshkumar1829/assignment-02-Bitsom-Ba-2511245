DROP DATABASE IF EXISTS assignment02;

SHOW DATABASES;

CREATE DATABASE IF NOT EXISTS assignment02;

USE assignment02;
-- Create Dimension Table: dim_date
CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    full_date DATE,
    month INT,
    year INT
);

-- Create Dimension Table: dim_store
CREATE TABLE dim_store (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(50),
    city VARCHAR(50)
);

-- Create Dimension Table: dim_product
CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50)
);

-- Create Fact Table
CREATE TABLE fact_sales (
    sale_id INT PRIMARY KEY,
    date_id INT,
    store_id INT,
    product_id INT,
    quantity INT,
    revenue DECIMAL(10,2),

    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);
-- Insert into dim_date
INSERT INTO dim_date VALUES
(1,'2024-01-01',1,2024),
(2,'2024-02-01',2,2024),
(3,'2024-03-01',3,2024);

-- Insert into dim_store
INSERT INTO dim_store VALUES
(1,'Store A','Delhi'),
(2,'Store B','Mumbai'),
(3,'Store C','Bangalore');

-- Insert into dim_product
INSERT INTO dim_product VALUES
(1,'Laptop','Electronics'),
(2,'T-Shirt','Clothing'),
(3,'Milk','Groceries');

-- Insert into fact_sales (10 rows)
INSERT INTO fact_sales VALUES
(1,1,1,1,2,120000),
(2,1,2,2,5,5000),
(3,1,3,3,10,600),
(4,2,1,2,4,4000),
(5,2,2,1,1,60000),
(6,2,3,3,8,480),
(7,3,1,1,3,180000),
(8,3,2,2,6,6000),
(9,3,3,3,7,420),
(10,1,1,3,5,300);
