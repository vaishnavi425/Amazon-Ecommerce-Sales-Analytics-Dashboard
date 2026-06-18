CREATE DATABASE amazon_sales_db;
USE amazon_sales_db;

SELECT COUNT(*)
FROM `amazon sale report`;

SELECT *
FROM `amazon sale report`
LIMIT 5;

CREATE TABLE amazon_sales (
order_id VARCHAR(50),
order_date DATE,
status VARCHAR(50),
fulfilment VARCHAR(50),
category VARCHAR(100),
qty INT,
amount DECIMAL(10,2),
ship_city VARCHAR(100),
ship_state VARCHAR(100),
b2b VARCHAR(10)
);

SELECT *
FROM amazon_sales
WHERE amount IS NULL;

DELETE
FROM amazon_sales
WHERE amount IS NULL;

SHOW COLUMNS FROM `amazon sale report`;
