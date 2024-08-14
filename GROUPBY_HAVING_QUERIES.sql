/*  GroupBy and Having assignment :
To excute the provided queries involving GROUP BY and HAVING clauses, you should have two main tables in your database: 
Employees and Departments.

GROUP BY and HAVING queries

List the departments with more than 5 employees.
Calculate Average Salary by Department for Departments with More Than 3 Employees:
Identify Locations with High Average Salaries:
Find Job Titles with at Least 3 Employees:
Calculate Total Salary Expenditure for Departments with Average Salaries Below $55,000:
Count the Number of Employees Hired in Each Year:
Identify Departments with No Employees Earning Over $70,000:
Calculate the Average Years of Service by Department for Departments with at Least 2 Employees:
Find Locations with Only One Department:
Identify Departments with the Highest Average Salary:
   */
   
   USE COMPANY;
  -- Create  DEPARTMENT table
CREATE TABLE DEPARTMENT (
    DEPARTMENT_ID INT PRIMARY KEY,
    DEPARTMENT_NAME VARCHAR(100),
    LOCATION VARCHAR(100)
);

-- Create EMPLOYEE table
CREATE TEMPORARY TABLE EMPLOYEE (
    EMPLOYEE_ID INT PRIMARY KEY,
    DEPARTMENT_ID INT,
    JOB_TITLE VARCHAR(100),
    SALARY DECIMAL(10, 2),
    HIRE_DATE DATE
);

-- Insert data into DEPARTMENT table
INSERT INTO DEPARTMENT (DEPARTMENT_ID, DEPARTMENT_NAME, LOCATION)
VALUES 
(1, 'Engineering', 'New York'),
(2, 'Marketing', 'Los Angeles'),
(3, 'Finance', 'Chicago');

-- Insert data into EMPLOYEE table
INSERT INTO EMPLOYEE (EMPLOYEE_ID, DEPARTMENT_ID, JOB_TITLE, SALARY, HIRE_DATE)
VALUES 
(1, 1, 'Software Engineer', 60000, '2022-01-01'),
(2, 1, 'Data Scientist', 70000, '2022-02-01'),
(3, 1, 'Software Engineer', 55000, '2022-03-01'),
(4, 1, 'Software Engineer', 65000, '2022-04-01'),
(5, 1, 'Data Engineer', 62000, '2022-05-01'),
(6, 2, 'Marketing Manager', 75000, '2022-06-01'),
(7, 2, 'Marketing Specialist', 60000, '2022-07-01'),
(8, 2, 'Marketing Specialist', 58000, '2022-08-01'),
(9, 3, 'Financial Analyst', 60000, '2022-09-01'),
(10, 3, 'Accountant', 55000, '2022-10-01');

-- List the departments with more than 5 employees
SELECT d.DEPARTMENT_NAME
FROM DEPARTMENT d
INNER JOIN EMPLOYEE e ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
GROUP BY d.DEPARTMENT_NAME
HAVING COUNT(*) > 5;

-- Calculate Average Salary by Department for Departments with More Than 3 Employees
SELECT d.DEPARTMENT_NAME, AVG(e.SALARY) AS AVERAGE_SALARY
FROM DEPARTMENT d
INNER JOIN EMPLOYEE e ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
GROUP BY d.DEPARTMENT_NAME
HAVING COUNT(*) > 3;

-- Identify Locations with High Average Salaries
SELECT d.LOCATION, AVG(e.SALARY) AS AVERAGE_SALARY
FROM DEPARTMENT d
INNER JOIN EMPLOYEE e ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
GROUP BY d.LOCATION
HAVING AVG(e.SALARY) > (SELECT AVG(SALARY) FROM EMPLOYEE);

-- Find Job Titles with at Least 3 Employees
SELECT JOB_TITLE
FROM EMPLOYEE
GROUP BY JOB_TITLE
HAVING COUNT(*) >= 3;

-- Calculate Total Salary Expenditure for Departments with Average Salaries Below $55,000
SELECT d.DEPARTMENT_NAME, SUM(e.SALARY) AS TOTAL_SALARY_EXPENDITURE
FROM DEPARTMENT d
INNER JOIN EMPLOYEE e ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
GROUP BY d.DEPARTMENT_NAME
HAVING AVG(e.SALARY) < 55000;

-- Count the Number of Employees Hired in Each Year
SELECT YEAR(HIRE_DATE) AS HIRE_YEAR, COUNT(*) AS NUM_EMPLOYEES
FROM EMPLOYEE
GROUP BY YEAR(HIRE_DATE);

-- Identify Departments with No Employees Earning Over $70,000
SELECT d.DEPARTMENT_NAME
FROM DEPARTMENT d
LEFT JOIN EMPLOYEE e ON d.DEPARTMENT_ID = e.DEPARTMENT_ID AND e.SALARY > 70000
WHERE e.EMPLOYEE_ID IS NULL;

-- Calculate the Average Years of Service by Department for Departments with at Least 2 Employees
SELECT d.DEPARTMENT_NAME, AVG(DATEDIFF(YEAR, e.HIRE_DATE, GETDATE())) AS AVERAGE_YEARS_OF_SERVICE
FROM DEPARTMENT d
INNER JOIN EMPLOYEE e ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
GROUP BY d.DEPARTMENT_NAME
HAVING COUNT(*) >= 2;

-- Find Locations with Only One Department
SELECT LOCATION
FROM DEPARTMENT
GROUP BY LOCATION
HAVING COUNT(*) = 1;


COMMIT;
