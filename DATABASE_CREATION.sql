/* Database Creation :
Assignment Questions:
Database Creation:
   - Create a database named `Company`.
Table Creation:
   - Inside the `Company` database, create a table called `Employee` with the following fields:
     - `EmployeeID` (Integer, Primary Key)
     - `FirstName` (VARCHAR, 50 characters)
     - `LastName` (VARCHAR, 50 characters)
     - `Salary` (Decimal, 10 digits in total with 2 decimal places)
     - `Department` (VARCHAR, 50 characters)
     - `HireDate` (Date)
     - `JobTitle` (VARCHAR, 100 characters)
     - `Location` (VARCHAR, 100 characters)
Data Insertion:
   - Insert 10 records into the `Employee` table with appropriate values for each field.
 */
 CREATE DATABASE Company;
 USE COMPANY;
 
 CREATE TABLE Employee ( 
     EmployeeID Integer Primary Key, 
     FirstName VARCHAR(50),
     LastName VARCHAR(50),
     Salary Decimal(10,2), 
     Department VARCHAR (50),
     HireDate Date,
     JobTitle VARCHAR(100),
     Location VARCHAR(100)
     );
     
     INSERT INTO Employee (EmployeeID, FirstName, LastName, Salary, JobTitle, Department, Location, HireDate)
VALUES
(1, 'John', 'Doe', 75000.00, 'Manager', 'HR', 'New York', '2019-05-15'),
(2, 'Jane', 'Smith', 45000.00, 'HR Manager', 'HR', 'Chicago', '2020-02-20'),
(3, 'Michael', 'Johnson', 60000.00, 'Senior Accountant', 'Finance', 'San Francisco', '2018-10-10'),
(4, 'Emily', 'Williams', 55000.00, 'Engineer', 'IT', 'Los Angeles', '2017-07-01'),
(5, 'David', 'Brown', 35000.00, 'Analyst', 'Marketing', 'New York', '2019-12-05'),
(6, 'Jessica', 'Jones', 42000.00, 'Specialist', 'Finance', 'Chicago', '2021-01-15'),
(7, 'Daniel', 'Garcia', 65000.00, 'Analyst', 'Marketing', 'Chicago', '2016-08-20'),
(8, 'Maria', 'Martinez', 55000.00, 'Engineer', 'IT', 'San Francisco', '2022-03-10'),
(9, 'Kevin', 'Lee', 73000.00, 'Product Management', 'Product Manager', 'Austin','2023-06-25'),
(10, 'Sarah', 'Nguyen', 64000.00, 'Quality Assurance', 'QA Analyst', 'Denver', '2022-12-08');


     COMMIT;