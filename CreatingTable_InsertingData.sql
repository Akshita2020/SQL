Create a Database and Tables in SQL :
Question 1: Create a new database named 'Volcanus.'
Question 2: Create a table called 'Customers' with the following columns:
customer_id (INT, Primary Key)
first_name (VARCHAR(50})
last_name (VARCHAR(50})
age (INT)
country (VARCHAR(50})
Question 3: Insert the following data into the 'Customers' table:
Customer ID: 1, First Name: Marcus, Last Name: Doe, Age: 31, Country: USA
Customer ID: 2, First Name: Robert, Last Name: Luna, Age: 22, Country: USA
Customer ID: 3, First Name: David, Last Name: Robinson, Age: 22, Country: UK
Customer ID: 4, First Name: Paul, Last Name: Reinhardt, Age: 25, Country: UK
Customer ID: 5, First Name: Alexandra, Last Name: Doe, Age: 28, Country: UAE
Question 4: Create a table called 'Orders' with the following columns:
order_id (INT, Primary Key)
item (VARCHAR(50})
amount (DECIMAL(l0, 2))
customer_id (INT)
Question 5: Insert the following data into the 'Orders' table:
Order ID: 1, Item: Keyboard, Amount: $400.00, Customer ID: 4
Order ID: 2, Item: Mouse, Amount: $300.00, Customer ID: 4
Order ID: 3, Item: Monitor, Amount: $12,000.00, Customer ID: 3
Order ID: 4, Item: Keyboard, Amount: $400.00, Customer ID: 1
Order ID: 5, Item: Mousepad, Amount: $250.00, Customer ID: 2
Question 6: Create a table called 'Shippings' with the following columns:
shipping_id (INT, Primary Key)
status (VARCHAR(50})
customer (INT)
Question 7: Insert the following data into the 'Shippings' table:
Shipping ID: 1, Status: Pending, Customer: 2
Shipping ID: 2, Status: Pending, Customer: 4
Shipping ID: 3, Status: Delivered, Customer: 3
Shipping ID: 4, Status: Pending, Customer: 5
Shipping ID: 5, Status: Delivered, Customer: 1

 


CREATE DATABASE VOLCANUS;
USE VOLCANUS;
CREATE TABLE CUSTMORES (
CUSTOMER_ID INT PRIMARY KEY, 
FIRST_NAME VARCHAR(50), 
LAST_NAME VARCHAR (50),
AGE INT, 
COUNTRY VARCHAR (50)
);                   
INSERT INTO CUSTMORES (CUSTOMER_ID, FIRST_NAME, LAST_NAME, AGE, COUNTRY)
values( 1, 'MARCUS', 'DOE', 31, 'USA');
INSERT INTO CUSTMORES (CUSTOMER_ID, FIRST_NAME, LAST_NAME, AGE, COUNTRY)
values( 2, 'ROBERT', 'LUNA', 22, 'USA');
INSERT INTO CUSTMORES (CUSTOMER_ID, FIRST_NAME, LAST_NAME, AGE, COUNTRY)
values( 3, 'DAVID', 'ROBINSON', 22, 'UK');
INSERT INTO CUSTMORES (CUSTOMER_ID, FIRST_NAME, LAST_NAME, AGE, COUNTRY)
values( 4, 'PAUL', 'REINHARDT', 25, 'UK');
INSERT INTO CUSTMORES (CUSTOMER_ID, FIRST_NAME, LAST_NAME, AGE, COUNTRY)
values( 5, 'AlEXENDRA', 'DOE', 28, 'UAE');
select*from custmores;

CREATE TABLE ORDERS (
ORDER_ID INT Primary Key,
ITEM VARCHAR(50),
AMOUNT DECIMAL(10, 2),
CUSTMOER_ID INT
);
 INSERT INTO ORDERS ( ORDER_ID, ITEM, AMOUNT, CUSTMOER_ID)
 VALUES ( 1, 'KEYBOARD', 400.00, 4);
 INSERT INTO ORDERS ( ORDER_ID, ITEM, AMOUNT, CUSTMOER_ID)
 VALUES ( 2, 'MOUSE', 300.00, 4);
 INSERT INTO ORDERS ( ORDER_ID, ITEM, AMOUNT, CUSTMOER_ID)
 VALUES ( 3, 'MONITOR', 12000.00, 3);
 INSERT INTO ORDERS ( ORDER_ID, ITEM, AMOUNT, CUSTMOER_ID)
 VALUES ( 4, 'KEYBOARD', 400.00, 1);
 INSERT INTO ORDERS ( ORDER_ID, ITEM, AMOUNT, CUSTMOER_ID)
 VALUES ( 5, 'MOUSEPAD', 250.00, 2);
 
DESC ORDERS;
SELECT*FROM ORDERS;

CREATE TABLE SHIPPINGS(
SHIPPING_ID INT Primary Key,
STATUSS VARCHAR(50),
CUSTOMER INT
);

INSERT INTO SHIPPINGS (SHIPPING_ID, STATUSS, CUSTOMER)
VALUES ( 1, 'PENDING', 2);
INSERT INTO SHIPPINGS (SHIPPING_ID, STATUSS, CUSTOMER)
VALUES ( 2, 'PENDING', 4);
INSERT INTO SHIPPINGS (SHIPPING_ID, STATUSS, CUSTOMER)
VALUES ( 3, 'DELIVERED', 3);
INSERT INTO SHIPPINGS (SHIPPING_ID, STATUSS, CUSTOMER)
VALUES ( 4, 'PENDING', 5);
INSERT INTO SHIPPINGS (SHIPPING_ID, STATUSS, CUSTOMER)
VALUES ( 5, 'DELIVERED', 1);

SELECT*FROM SHIPPINGS;