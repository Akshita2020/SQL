USE SIMPLELEARN;employeesemployee1

/* IT IS A COMMAND THAT DETERMINES WHETHER A SPECIFIC CHARACTER STRING MATCHES A PATTERN 
LIKE OPERATOR IS FREQUENTLY USED IN WHERE CLAUSE TO LOOK FOR A SPECIFIC PATTERN IN COLUMN.

-- 	WHAT IS LIKE CLAUSE 
SQL LIKE IS A COMMAND THAT DETERMINES WHETHER A SPECIFIC CHARACTER STRING MATCHES A PATTERN. 
LIKE OPERATOR IS FREQUENTLY USED IN A WHERE CLAUSE TO LOOK FOR A SPECIFIC PATTERN IN A COLUMN

-- WHAT IS WILDCARD 
WILDCARD CHARACTERS ARE SPECIAL SYMBOLS AND CHARACTERS USED TO REPRESENT ONE OR MORE THAN ONE CHARACTER IN A STRING
PERCENTAGE (%)  IT REPRESENTS ZERO OR ONE OR MORE CHARACTERS
UNDERSCORE (_)  IT EXACTLY REPRSENTS ONE CHARACTER 

 */
 
SELECT EMPNAME
FROM EMPLOYEE
WHERE EMPNAME LIKE 'A%';

COMMIT;
