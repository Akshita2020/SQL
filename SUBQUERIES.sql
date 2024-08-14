USE SIMPLELEARN;
/* WHAT IS SUBQUERY? 
A SUBQUERY IS A NESTED QUERY THAT IS ENCLOSED INSIDE ANOTHER QUERY. THE INNNER QUERY IS USUALLY
USED TO DETERMINE THE RESULT OF OUTER QUERY
SYNTAX- SELECT EMPNAME, DEPT FROM EMPLOYEE WHERE SALARY = (SELECT MAX(SALARY) FRPM EMPLOYEE); 
                | > OUTER QUERY                              |> INNER QUERY
                
  TYPES OF SUBQUERIES - 1. SELECT 2. INSERT 3. UPDATE 4. DELETE              
 */
 -- SELECT SUBQYERY 
 SELECT*FROM EMPLOYEESS;
SELECT *
FROM EMPLOYEE
WHERE SALARY < (SELECT AVG(SALARY) AS AVGSALARY FROM EMPLOYEE);

SELECT *
FROM EMPLOYEE
WHERE SALARY < (SELECT SALARY FROM EMPLOYEE);

-- INSERT SUBQUERY
INSERT INTO EMPLOYEESS
SELECT EMPID, EMPNAME, AGE, CITY, SALARY 
FROM EMPLOYEE 
WHERE SALARY IN (SELECT SALARY FROM EMPLOYEE WHERE SALARY >40000);

-- UPDATE 
-- DELETE 

COMMIT;

