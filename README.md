# Bookstore Management Database | SQL Project

1. Project Overview  
This project focuses on building and managing a Bookstore Management Database using SQL. The database is designed to store and manage information related to books, customers, and orders. It also includes data cleaning and transformation steps to prepare clean, structured tables suitable for analysis and reporting.

2. Purpose of the Project  
The purpose of this project is to demonstrate core SQL skills such as database design, table relationships, data cleaning, and creation of analytical tables. The project shows how raw transactional data can be transformed into clean dimension and fact tables for better analysis and business insights.

3. Database Design  
The database consists of the following main tables:
- Books: Stores book details such as title, author, genre, price, stock, and publication year  
- Customers: Stores customer information including name, contact details, city, and country  
- Orders: Stores transaction-level data linking customers and books  

Primary keys and foreign key relationships are used to maintain data integrity between tables.

4. Data Cleaning & Preparation (SQL)  
SQL was used extensively to clean and prepare the data before analysis. This included:
- Removing extra spaces from text columns using TRIM  
- Standardizing text fields (title, author, genre) using proper case formatting  
- Removing duplicate book records  
- Deleting rows with missing critical values in the orders table  

These steps ensured that the data was accurate, consistent, and reliable for further processing.

5. Data Modeling (Dimensional Tables)  
After cleaning the data, dimensional modeling was applied:
- A clean Books dimension table (dim_books) was created from the books table  
- A clean Customers dimension table (dim_customers) was created from the customers table  
- A Sales fact table (fact_sales) was created by joining orders and books  

The fact table includes calculated fields such as total sales amount based on quantity and unit price.

6. Analysis Ready Tables  
The final fact_sales table contains:
- Order details  
- Customer and book references  
- Quantity sold  
- Unit price  
- Computed total sales amount  

This structure makes the database suitable for reporting and visualization tools like Power BI.

7. SQL Concepts Used  
- DDL statements (CREATE, DROP)  
- DML statements (SELECT, UPDATE, DELETE)  
- Primary and foreign key constraints  
- Data cleaning techniques  
- JOIN operations  
- Calculated fields  
- Dimensional modeling (Fact and Dimension tables)  

8. Tools Used  
- PostgreSQL (SQL)  

9. Use Case / Outcome  
This project demonstrates the ability to design a relational database, clean raw data using SQL, and transform transactional data into an analysis-ready format. It is suitable for showcasing SQL skills in Data Analyst, Business Analyst, and entry-level data roles.
