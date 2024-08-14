USE SIMPLELEARN;
-- Create the EMPLOYEE1 table
CREATE TABLE EMPLOYEE1 (
    EMPLOYEE_ID INT,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    EMAIL VARCHAR(100),
    PHONE_NUMBER VARCHAR(20),
    HIRE_DATE DATE,
    JOB_ID VARCHAR(20),
    SALARY DECIMAL(10, 2),
    MANAGER_ID INT,
    DEPARTMENT_ID INT
);

-- Insert data into the EMPLOYEE1 table
INSERT INTO EMPLOYEE1 (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, MANAGER_ID, DEPARTMENT_ID) VALUES
(1, 'Rahul', 'Gupta', 'rahul.gupta@example.com', '+91 1234567890', '2022-01-01', 'DEV1', 50000.00, NULL, 1),
(2, 'Priya', 'Sharma', 'priya.sharma@example.com', '+91 9876543210', '2022-02-15', 'DEV2', 55000.00, 1, 1),
(3, 'Amit', 'Patel', 'amit.patel@example.com', '+91 9999999999', '2022-03-20', 'MAN1', 60000.00, 1, 2),
(4, 'Neha', 'Singh', 'neha.singh@example.com', '+91 8888888888', '2022-04-10', 'MAN2', 65000.00, 3, 2),
(5, 'Raj', 'Verma', 'raj.verma@example.com', '+91 7777777777', '2022-05-05', 'DEV3', 60000.00, 3, 1),
(6, 'Pooja', 'Joshi', 'pooja.joshi@example.com', '+91 6666666666', '2022-06-25', 'DEV4', 55000.00, 3, 1),
(7, 'Sanjay', 'Kumar', 'sanjay.kumar@example.com', '+91 5555555555', '2022-07-12', 'MAN3', 70000.00, 3, 2),
(8, 'Anjali', 'Gandhi', 'anjali.gandhi@example.com', '+91 4444444444', '2022-08-30', 'MAN4', 75000.00, 7, 2),
(9, 'Vikram', 'Rao', 'vikram.rao@example.com', '+91 3333333333', '2022-09-18', 'DEV5', 60000.00, 7, 1),
(10, 'Meera', 'Iyer', 'meera.iyer@example.com', '+91 2222222222', '2022-10-22', 'MAN5', 80000.00, 7, 2),
(11, 'Suresh', 'Menon', 'suresh.menon@example.com', '+91 1111111111', '2022-11-14', 'DEV6', 65000.00, 7, 1),
(12, 'Deepika', 'Reddy', 'deepika.reddy@example.com', '+91 9999999999', '2022-12-03', 'DEV7', 60000.00, 10, 1),
(13, 'Arun', 'Kulkarni', 'arun.kulkarni@example.com', '+91 8888888888', '2023-01-07', 'DEV8', 55000.00, 10, 1),
(14, 'Shreya', 'Nair', 'shreya.nair@example.com', '+91 7777777777', '2023-02-10', 'MAN6', 85000.00, 10, 2),
(15, 'Gaurav', 'Desai', 'gaurav.desai@example.com', '+91 6666666666', '2023-03-15', 'MAN7', 90000.00, 14, 2),
(16, 'Ananya', 'Rajput', 'ananya.rajput@example.com', '+91 5555555555', '2023-04-20', 'DEV9', 65000.00, 14, 1),
(17, 'Rakesh', 'Goswami', 'rakesh.goswami@example.com', '+91 4444444444', '2023-05-25', 'DEV10', 60000.00, 14, 1),
(18, 'Divya', 'Chopra', 'divya.chopra@example.com', '+91 3333333333', '2023-06-30', 'DEV11', 55000.00, 14, 1),
(19, 'Aakash', 'Malhotra', 'aakash.malhotra@example.com', '+91 2222222222', '2023-07-10', 'MAN8', 95000.00, 14, 2),
(20, 'Nidhi', 'Saxena', 'nidhi.saxena@example.com', '+91 1111111111', '2023-08-18', 'MAN9', 100000.00, 19, 2);


-- GROUP BY
SELECT COUNT(EMPLOYEE_ID) AS TOTAL, DEPARTMENT_ID
FROM EMPLOYEE1
GROUP BY department_ID
ORDER BY DEPARTMENT_ID ;
SELECT*FROM EMPLOYEE1;

SELECT department_ID, AVG(SALARY) AS AVERAGE_SALARY
FROM EMPLOYEE1
GROUP BY department_ID;


-- BETWEEN 
SELECT FIRST_NAME, LAST_NAME, SALARY FROM EMPLOYEE1
WHERE SALARY between 20000 AND 50000 order by SALARY;
SELECT EMPLOYEE_ID ,FIRST_NAME, LAST_NAME, SALARY FROM EMPLOYEE1
WHERE EMPLOYEE_ID between 1 AND 5 ORDER BY SALARY, EMPLOYEE_ID;

-- NOT OPERATOR 
SELECT EMPLOYEE_ID ,FIRST_NAME, LAST_NAME, SALARY FROM EMPLOYEE1
WHERE EMPLOYEE_ID NOT between 1 AND 5 ORDER BY SALARY, EMPLOYEE_ID;

SELECT EMPLOYEE_ID, FIRST_NAME 
FROM EMPLOYEE1 WHERE FIRST_NAME between 'A' AND 'G' ORDER BY FIRST_NAME;