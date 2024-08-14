USE SIMPLELEARN; 

-- SQL SELECT STATEMENT (RETERIVE DATA FROM ONE OR MORE DATABSES TABLES)
SELECT ROLL_NO, NAME, AGE FROM STUDENTS;
SELECT*FROM STUDENTS;

-- SELECT CONDITIONS (IT RETERVIES THE DATA BY FOLLOWING PARTICULAR CONDITION WITH THE HELP OF WHERE CLAUSES)
SELECT*FROM EMPLOYEE WHERE AGE = 29;
SELECT ID, NAME, CITY, SALARY FROM EMPLOYEE WHERE SALARY >50000;

-- SELECT DISTINCT (IT IS USED TO FETCH IDENTICAL OR DITINCT COLUMN VALUE FROM EXISTING TABLE WITHOUT ANY DUPLICATE VALUE)
SELECT DISTINCT CITY FROM EMPLOYEE;

-- SELECT COUNT (IT RETURNS THE TOTAL NUMBER OF RECCORDS FROM THE TABLE)
SELECT COUNT(*) FROM EMPLOYEE;
SELECT COUNT(*) FROM EMPLOYEE WHERE SALARY =50000;
SELECT COUNT(distinct CITY) FROM EMPLOYEE;

-- SELECT LIMIT  ( SHOWS LIMITED NUMBER OF RECORDS)
SELECT*FROM EMPLOYEE LIMIT 3;
SELECT*FROM EMPLOYEE ORDER BY SALARY DESC LIMIT 5;

-- SELECT RANDOM (RETURN ANY RANDOM ROW)
SELECT*FROM EMPLOYEE ORDER BY rand();
SELECT*FROM EMPLOYEE ORDER BY rand() LIMIT 4;

-- SELECT IN (IT IS USED TO FETCH SPECIFIC ROWS OR VALUES FROM AN EXISTING TABLE WITH MULTIPLE CONDITIONS )
SELECT*FROM EMPLOYEE WHERE ID IN (1,2,3);

-- SELECT DATE STATEMENT (TO RETERIVE PARTICULAR DATE)
SELECT*FROM STUDENTS WHERE DOB > '2000-01-01';
SELECT * FROM STUDENTS WHERE YEAR(DOB) BETWEEN 2000 AND 2005;

-- SELECT SUM ( USED TO RETURN SUM OF ALL THER VALUES IN THE SPECIFIED COLUMN)
SELECT SUM(SALARY) FROM EMPLOYEE;
SELECT SUM(SALARY) FROM EMPLOYEE WHERE AGE =30;

-- SELECT NULL (USED TO REPRENSET THE MISSING RECORD DURING THE INSERTION AND YET TO BE UPDATED)
SELECT*FROM STUDENTS WHERE TOTAL_MARKS IS NULL;

COMMIT;