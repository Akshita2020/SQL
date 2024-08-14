/* MySQL Case Queries :
MySQL Case Queries refer to using the CASE statement in MySQL queries to perform conditional logic and 
return different values based on specified conditions within the database.
Please find the attched document and complete it.
 */
 
 USE COMPANY;
 SELECT*FROM EMPLOYEE;
 
 /* MySQL Case Queries :
1.	Categorize Employees by Salary Range:
Show the first and last names of employees along with their salary categories based on the 
following salary ranges: "High Salary" for salaries greater than $60,000, "Medium Salary" for 
salaries between $40,000 and $60,000, and "Low Salary" for salaries less than $40,000.
*/

SELECT FIRSTNAME, LASTNAME, SALARY,
CASE 
WHEN SALARY > 60000 THEN 'High Salary'
WHEN SALARY BETWEEN  40000 AND 60000 THEN 'Medium Salary'
WHEN SALARY < 40000 THEN 'Low Salary'
END AS SALARY_CATEGORY
FROM EMPLOYEE;

/* 2.	Identify HR Managers:
List the employees who have the job title "HR Manager" and display whether they are HR managers or not. */

SELECT FIRSTNAME, LASTNAME, SALARY,
CASE 
WHEN JOBTITLE = 'HR MANAGER' THEN 'HR MANAGER'
ELSE 'NOT HR MANAGER'
 END AS HRManagerStatus
FROM Employee;

/* 3.	Categorize Employees by Department:
Show employees' first and last names along with their department categories. 
Categorize them as "HR," "IT," "Finance," "Marketing," or "Other." */

SELECT 
    FirstName, 
    LastName,
    department,
    CASE 
        WHEN  DEPARTMENT  = 'IT' THEN 'IT'
        WHEN  DEPARTMENT = 'HR' THEN 'HR'
        WHEN  DEPARTMENT = 'Marketing' THEN 'Marketing'
        ELSE 'Other' 
    END AS DepartmentCategory
FROM Employee
GROUP BY 
    CASE 
        WHEN DEPARTMENT = 'IT' THEN 'IT'
        WHEN  DEPARTMENT = 'HR' THEN 'HR'
        WHEN  DEPARTMENT  = 'Marketing' THEN 'Marketing'
        ELSE 'Other' 
    END, 
    FirstName, 
    LastName,
    department;
    
    /* 4.	Categorize Employees by Location:
List employees' first and last names along with their location categories. 
Categorize them as "San Francisco," "New York," "Chicago," "Los Angeles," or "Other."
*/

SELECT 
FIRSTNAME,
LASTNAME,
CASE 
WHEN LOCATION = 'San Francisco' THEN 'San Francisco'
WHEN LOCATION = 'New York' THEN 'New York'
WHEN LOCATION = 'Chicago' THEN 'Chicago'
WHEN LOCATION = 'Los Angeles' THEN 'Los Angeles'
ELSE 'OTHER'
END AS Location_Categories
FROM EMPLOYEE;


/*  
5.	Identify Senior Accountants:
List the employees who have the job title "Senior Accountant" and display whether they are senior accountants or not.
 */
 
 SELECT 
 FIRSTNAME,
 LASTNAME,
 SALARY,
 CASE
 WHEN JOBTITLE = 'SENIOR ACCOUNTANT' THEN 'SENIOR ACCOUNTANT'
 ELSE 'NOT SENIOR ACCOUNTANT'
 END AS SENIOR_ACCOUNTANT
 FROM EMPLOYEE;
 
 /*  6.	Categorize Employees by Years of Service:
Show employees' first and last names along with their years of service categories.
 Categorize them as "1-2 years," "3-4 years," "5-6 years," or "7+ years" based on their hire date.  */
 
 SELECT
 FIRSTNAME,
 LASTNAME,
HIREDATE,
 CASE
   WHEN DATEDIFF(CURDATE(), HireDate) BETWEEN 0 AND 365 THEN '1-2 years'
        WHEN DATEDIFF(CURDATE(), HireDate) BETWEEN 366 AND 730 THEN '3-4 years'
        WHEN DATEDIFF(CURDATE(), HireDate) BETWEEN 731 AND 1095 THEN '5-6 years'
        ELSE '7+ years'
    END AS Years_of_Service_Category
FROM
    Employee;
 
 /* 7.	Categorize Employees by Job Title:
Show employees' first and last names along with their job title categories.
 Categorize them as "Manager," "Engineer," "Analyst," "Specialist," or "Other." */
 
 SELECT 
 FIRSTNAME,
 LASTNAME,
 CASE 
 WHEN JOBTITLE = 'MANAGER' THEN 'MANGER'
  WHEN JOBTITLE = 'Engineer' THEN 'Engineer'
 WHEN JOBTITLE = 'Analyst' THEN 'Analyst'
 WHEN JOBTITLE = 'Specialist' THEN 'Specialist'
 ELSE 'OTHER'
 END AS Job_Title_Category
 FROM EMPLOYEE;
 
 /* 8.	Categorize Employees by Salary Range and Department:
Show employees' first and last names along with their salary categories within each department. 
Use a combination of department and salary-based categories.
 */
 SELECT
 FIRSTNAME,
 LASTNAME,
 DEPARTMENT,
 CASE
 WHEN DEPARTMENT = 'HR' AND SALARY>= 75000 THEN 'SALAES 75K+'
 WHEN DEPARTMENT = 'PRODUCT MANGER' AND SALARY>= 70000 THEN 'PRODUCT MANGER 70K+'
  WHEN DEPARTMENT = 'MARKETING' AND SALARY>= 65000 THEN 'MARKETING 65K+'
 WHEN DEPARTMENT = 'QA ANALYST' AND SALARY>= 63000 THEN 'QA ANALYST 63K+'
 WHEN DEPARTMENT = 'FINANCE' AND SALARY>= 60000 THEN 'FINANCE 60K+'
  WHEN DEPARTMENT = 'IT' AND SALARY>= 55000 THEN 'IT 55K+'
  ELSE 'OTHER CATEGORY'
  END AS Salary_Category
  FROM EMPLOYEE;
  
  /* 9.	Identify Employees in the IT Department:
List the employees who work in the IT department and display whether they are IT employees or not.  */
SELECT 
FIRSTNAME,
LASTNAME,
CASE
WHEN DEPARTMENT ='IT' THEN 'YES'
ELSE 'NO'
END AS IT_Department_Employee
FROM EMPLOYEE;

/*  10.	Categorize Employees by Location and Department:
Show employees' first and last names along with their location and department categories. 
Use a combination of location and department-based categories. */
SELECT
    FirstName,
    LastName,
    Location,
    Department,
    CASE 
        WHEN Location = 'San Francisco' THEN 'San Francisco'
        WHEN Location = 'New York' THEN 'New York'
        WHEN Location = 'Chicago' THEN 'Chicago'
        WHEN Location = 'Los Angeles' THEN 'Los Angeles'
        ELSE 'Other'
    END AS Location_Category,
    CASE 
        WHEN Department = 'Engineering' THEN 'Engineering'
        WHEN Department = 'Sales' THEN 'Sales'
        WHEN Department = 'Finance' THEN 'Finance'
        WHEN Department = 'Operations' THEN 'Operations'
        WHEN Department = 'IT' THEN 'IT'
        ELSE 'Other'
    END AS Department_Category
FROM
    Employee;

COMMIT;
