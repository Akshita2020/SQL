-- Queries on the 'Customers' Table: :

USE VOLCANUS;
 
 -- Retrieve all customer information from the 'Customers' table.
 SELECT*FROM CUSTOMER;
 
 -- Find the number of customers in the 'Customers' table.
 SELECT COUNT(*) FROM CUSTOMER;
 
 -- Retrieve the first name and age of customers who are from the 'UK.'
 SELECT FIRST_NAME, AGE FROM CUSTMORES WHERE COUNTRY ='UK'; 
 
 -- List the distinct countries where customers are located.
 SELECT distinct(COUNTRY) FROM CUSTMORES;
 
 -- Find the average age of customers.
 SELECT AVG(AGE) AS AVERAGE_AGE FROM CUSTMORES;
 
 -- Retrieve the first name and country of customers who are not from the 'USA.'
 SELECT FIRST_NAME, COUNTRY FROM CUSTMORES WHERE NOT COUNTRY = 'USA';
 
 -- Find the oldest customer in the 'Customers' table. 
 SELECT MAX(AGE) AS OLDEST_CUSTOMER FROM CUSTMORES;
 
 -- Retrieve the first name and last name of customers whose last names contain the substring 'Doe.'
 SELECT FIRST_NAME, LAST_NAME FROM CUSTMORES WHERE  substring(LAST_NAME,1,3) ='DOE';
 
 -- Count the number of customers in each country.
 SELECT COUNTRY, COUNT(*) AS NO_OF_CUSTMORES FROM CUSTMORES GROUP BY COUNTRY;
 
 -- Retrieve the first name and age of customers from the 'USA' who are older than 30.
 SELECT FIRST_NAME, AGE, COUNTRY FROM CUSTMORES WHERE COUNTRY = 'USA' AND AGE > 30;
 
 -- List the customers in descending order of age. 
 SELECT*FROM CUSTMORES ORDER BY AGE DESC;
 
 -- Find the youngest customer in the 'Customers' table.
 SELECT MIN(AGE) AS YOUNGEST_CUSTMOER FROM CUSTMORES; 
 
 -- Retrieve the first name and country of customers who are not from the 'UK.' 
SELECT FIRST_NAME, COUNTRY FROM CUSTMORES WHERE NOT COUNTRY = 'UK';

-- Count the number of customers in each age group (e.g., 20-29, 30-39, etc.).
SELECT 
    CASE 
        WHEN age BETWEEN 20 AND 29 THEN '20-29' 
        WHEN age BETWEEN 30 AND 39 THEN '30-39' 
        ELSE 'Other' 
    END AS age_group,
    COUNT(*) AS NUM_OF_CUSTMORES
FROM CUSTMORES
GROUP BY age_group;   

-- Retrieve the first name and age of the top 5 oldest customers.
SELECT FIRST_NAME, AGE FROM CUSTMORES ORDER BY AGE DESC LIMIT 5;

-- List the customers in alphabetical order by last name.
SELECT FIRST_NAME, LAST_NAME FROM CUSTMORES ORDER BY LAST_NAME ASC;

-- Find the customer with the highest age.
SELECT FIRST_NAME, LAST_NAME, AGE FROM CUSTMORES ORDER BY AGE DESC LIMIT 1;

-- Retrieve the first name and age of customers who are either from the 'USA' or 'UK.'
SELECT FIRST_NAME, AGE, COUNTRY FROM CUSTMORES WHERE COUNTRY = 'USA' OR 'UK';


-- Find the total number of customers who are older than 25.
SELECT COUNT(*) AS TOTAL_CUST_OVER25 FROM CUSTMORES WHERE AGE >25;

-- Retrieve the first name and age of customers from the 'UK' who are younger than 25
SELECT FIRST_NAME, AGE FROM CUSTMORES WHERE COUNTRY = 'UK' AND AGE <25;

COMMIT;S