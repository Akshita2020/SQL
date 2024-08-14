USE VOLCANUS;

/* 
Queries on the 'Orders' Table: 
*/

-- Retrieve all order information from the 'Orders' table.
SELECT*FROM ORDERS;

-- Find the number of orders in the 'Orders' table.
SELECT COUNT(*) AS TOTAL_ORDERS FROM ORDERS;

-- Retrieve the item names and amounts for orders placed by customers from the 'USA.'
SELECT O.ITEM, O.AMOUNT,O.COUNTRY, C.FIRST_NAME, C.LAST_NAME
FROM ORDERS O
INNER JOIN CUSTMORES C
ON C.CUSTOMER_ID = O.CUSTOMER_ID 
WHERE O.COUNTRY = 'USA';
								
						                   -- OR 
                                           
SELECT ITEM, AMOUNT FROM ORDERS WHERE CUSTOMER_ID IN (SELECT CUSTOMER_ID FROM CUSTOMER WHERE COUNTRY ='USA');

-- List the distinct items that have been ordered.
SELECT DISTINCT(ITEM) AS ORDERD_ITEM FROM ORDERS;

-- Find the average order amount.
SELECT AVG(AMOUNT) AS AVERAGE_ORDER_AMOUNT FROM ORDERS;

-- Retrieve the item names and customer IDs for orders with amounts greater than $500.
SELECT ITEM, CUSTOMER_ID, AMOUNT FROM ORDERS WHERE AMOUNT >500;

-- Find the most expensive item in the 'Orders' table.
SELECT ITEM, CUSTOMER_ID, AMOUNT FROM ORDERS ORDER BY AMOUNT DESC LIMIT 1;
SELECT ITEM, CUSTOMER_ID, AMOUNT FROM ORDERS WHERE AMOUNT = (SELECT MAX(AMOUNT) FROM ORDERS );

-- Retrieve the item names and customer IDs for orders with amounts less than or equal to $200.
SELECT ITEM, CUSTOMER_ID, AMOUNT FROM ORDERS WHERE AMOUNT <= 200;

-- Count the number of orders placed by each customer.
SELECT CUSTOMER_ID, COUNT(*) AS TOTAL_ORDERS FROM ORDERS GROUP BY CUSTOMER_ID;


-- Retrieve the item names and amounts for orders placed by customers from the 'UK.'
SELECT ITEM, AMOUNT, COUNTRY FROM ORDERS WHERE COUNTRY = 'UK';

-- List the orders in descending order of amount.
SELECT*FROM ORDERS ORDER BY AMOUNT DESC;

-- Find the order with the highest amount in the 'Orders' table. 
SELECT* FROM ORDERS WHERE AMOUNT = (SELECT MAX(AMOUNT) FROM ORDERS); 

-- Retrieve the item names and amounts for orders placed by customers from the 'USA' or 'UK.'
SELECT ITEM, AMOUNT FROM ORDERS WHERE COUNTRY = 'USA' OR 'UK';

-- Count the number of orders placed for each item.
SELECT ITEM, COUNT(*) AS NO_OF_ORDERS FROM ORDERS GROUP BY ITEM;

-- Retrieve the item names and amounts for the top 3 most expensive orders.
SELECT ITEM, AMOUNT FROM ORDERS ORDER BY AMOUNT DESC LIMIT 3;

-- List the orders in alphabetical order by item name.
SELECT*FROM ORDERS ORDER BY ITEM ASC;

-- Find the order with the lowest amount.
SELECT*FROM ORDERS ORDER BY AMOUNT ASC LIMIT 1;
SELECT ITEM, AMOUNT FROM ORDERS WHERE AMOUNT = (SELECT MIN(AMOUNT) FROM ORDERS);

-- Retrieve the item names and amounts for orders placed by customers from the 'UK' or 'USA.'
SELECT ITEM, AMOUNT FROM ORDERS WHERE COUNTRY = 'USA' OR 'UK';

-- Find the total number of orders with amounts greater than $300.
SELECT COUNT(*) AS TOTAL_ORDERS FROM ORDERS WHERE AMOUNT > 300;

-- Retrieve the item names and amounts for orders placed by customers with IDs 1 and 2.
SELECT ITEM, AMOUNT, CUSTOMER_ID FROM ORDERS WHERE CUSTOMER_ID IN (1,2);

COMMIT;