USE SIMPLELEARN;

-- INNER JOIN 

-- RETERVIVE THE EMPLOYEE DETAILS AND THE DEPARTMENT THEY ARE WORKING IN 
SELECT EMPLOYEE.EMPID, EMPLOYEE.EMPNAME, EMPLOYEE.DESIGNATION,department.DEPT_ID, department.DEPT_NAME
FROM EMPLOYEE 
INNER JOIN DEPARTMENT 
ON EMPLOYEE.DEPT_ID = department.DEPT_ID; 

-- RETERVIVE THE EMPLOYEE DETAILS, PROJECT THEY ARE WORKING ON AND THE PROJECTG MANGER ASSISTING THEM
SELECT EMPLOYEE.EMPID, EMPLOYEE.EMPNAME, EMPLOYEE.DESIGNATION,PROJECT.EMPID,PROJECT.PROJECT_NAME, PROJECT.MANAGER_NAME
FROM EMPLOYEE 
INNER JOIN PROJECT
ON EMPLOYEE.EMPID = PROJECT.EMPID;

-- OUTER JOIN 
SELECT EMPLOYEE.EMPID, EMPLOYEE.EMPNAME, EMPLOYEE.DESIGNATION,PROJECT.EMPID,PROJECT.PROJECT_NAME, PROJECT.MANAGER_NAME
FROM EMPLOYEE LEFT JOIN PROJECT 
ON EMPLOYEE.EMPID = PROJECT.EMPID
UNION 
SELECT EMPLOYEE.EMPID, EMPLOYEE.EMPNAME, EMPLOYEE.DESIGNATION,PROJECT.EMPID,PROJECT.PROJECT_NAME, PROJECT.MANAGER_NAME
FROM EMPLOYEE RIGHT JOIN PROJECT 
ON EMPLOYEE.EMPID = PROJECT.EMPID;

-- LEFT JOIN
SELECT CUSTOMER.CUSTOMERID, CUSTOMER.CUSTOMERNAME, ORDERS.PRODUCTNAME, ORDERS.QUANITITY, ORDERS.PURCHASEDATE, ORDERS.PRICE
FROM CUSTOMER
LEFT JOIN ORDERS
ON CUSTOMER.CUSTOMERID = ORDERS.CUSTOMERID;

-- RIGHT JOIN
SELECT CUSTOMER.CUSTOMERID, CUSTOMER.CUSTOMERNAME, ORDERS.PRODUCTNAME, ORDERS.QUANITITY, ORDERS.PURCHASEDATE, ORDERS.PRICE
FROM CUSTOMER
RIGHT JOIN ORDERS
ON CUSTOMER.CUSTOMERID = ORDERS.CUSTOMERID;

COMMIT;
