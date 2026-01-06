---creating the table
DROP TABLE IF EXISTS books;
CREATE TABLE BOOKS(
book_id SERIAL PRIMARY KEY,
title VARCHAR(100),
author VARCHAR (100),
genre VARCHAR (100),
published_year INT,
price NUMERIC(10, 2),
stock INT
);



SELECT * FROM books;




--create customers table
DROP TABLE IF EXISTS customers;

CREATE TABLE customers(
customer_id SERIAL PRIMARY KEY,
name VARCHAR(100),
email VARCHAR (100),
phone VARCHAR (15),
city VARCHAR(50),
country VARCHAR(150)
);


SELECT * FROM customers;






-- create table of orders
DROP TABLE IF EXISTS orders;

CREATE TABLE orders(
order_id SERIAL PRIMARY KEY,
customer_id INT REFERENCES customers(customer_id),
book_id INT REFERENCES books(book_id),
order_date DATE,
quantity INT,
total_amount NUMERIC(10,2)
);


SELECT * FROM orders;





--removal of extra space
UPDATE books
SET title = trim(title),
    author = trim(author),
    genre = trim(genre);



--making everything proper case
UPDATE books
SET title = initcap(title),
    author = initcap(author),
    genre = initcap(genre);



--remove duplicate rows
DELETE FROM books b
WHERE ctid NOT IN (
  SELECT MIN(ctid)
  FROM books
  GROUP BY book_id
);


--remove rows with missing important values
DELETE FROM orders
WHERE order_id IS NULL OR customer_id IS NULL OR book_id IS NULL;





---now creating clean books table
CREATE TABLE dim_books AS
SELECT *
FROM books;



---create clean cutomer table
CREATE TABLE dim_customers AS
SELECT *
FROM customers;


---connecting orders table to books + customers
CREATE TABLE fact_sales AS
SELECT 
  o.order_id,
  o.order_date,
  o.customer_id,
  o.book_id,
  o.quantity,
  b.price AS unit_price,
  (o.quantity * b.price) AS total_amount
FROM orders o
JOIN books b ON o.book_id = b.book_id;



select * from fact_sales;













