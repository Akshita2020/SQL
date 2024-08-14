USE RESTAURANT;

create table student1 (
roll_no int primary key,
std_name varchar(50),
city varchar(50),
marks float
);
select * from student1;
insert into student1 (roll_no, std_name,city, marks)
values (1, 'rohan', 'indore', 70),
       (2, 'akshita', null, 70),
       (3, 'ishika',null, 70),
       (4, 'shiv', 'mhow', 70),
       (5, 'atul', 'betma', null),
       (6, 'bhavesh', null, 70),
       (7, 'shivani', 'agra', 70),
       (8, 'rohan', 'indore', null),
       (9, 'alok', 'rewa', null),
       (10, 'mohan', null, 70),
       (11, 'sohan', 'bhopal', 80);
select * from student1;
select *from student1 where std_name is null;
select *from student1 where city is null;
select *from student1 where marks is null;
SELECT *FROM student1 WHERE std_name IS NULL AND marks IS NULL;
select *from student1 where std_name is null or marks is null;
select *from student1 where std_name is not null and marks is not  null;
    
select ifnull(marks, 100) from student1;  -- to fill null values in the table for temporaray change, to change permanantly use update
select nullif(marks, 70) from student1;   -- null all the particular values on the basis of given condition, opposite of ifnull
SELECT coalesce(MARKS, 65) FROM STUDENT1;

UPDATE STUDENT1 SET MARKS = IFNULL(MARKS, 65); -- TO FILL THE DATA PERMANANTLY THROUGH IFNULL 
UPDATE STUDENT1 SET MARKS = NULLIF(MARKS, 65);  -- TO NULL THE VALUES PERMNENTLY 


ALTER TABLE STUDENT1 ADD COLUMN MARKS1 FLOAT;
SELECT nullif(MARKS, MARKS1) FROM STUDENT1; -- TO FILL NULL VALUES FROM ONE COLUMN TO ANOTHER 

UPDATE STUDENT1 SET MARKS1 = 80 WHERE ROLL_NO = 1;
UPDATE STUDENT1 SET MARKS1 =
CASE 
WHEN ROLL_NO = 2 THEN 76
WHEN ROLL_NO = 3 THEN 86
WHEN ROLL_NO = 4 THEN 70
WHEN ROLL_NO = 5 THEN NULL
WHEN ROLL_NO = 6 THEN NULL
WHEN ROLL_NO = 7 THEN 70
WHEN ROLL_NO = 8 THEN 60
WHEN ROLL_NO = 9 THEN NULL
WHEN ROLL_NO = 10 THEN 65
WHEN ROLL_NO = 11 THEN 55
END 
WHERE ROLL_NO IN (2,3,4,5,6,7,8,9,10,11);

SELECT NULLIF(MARKS,MARKS1) FROM STUDENT1;
SELECT coalesce(MARKS, MARKS1, 100) FROM STUDENT1; -- WHEN YOU HAVE TO COMPARE TWO COLUMS THEN FILL THE DEFAULT VALUES 
SELECT coalesce(NULL, NULL, 100) FROM STUDENT1;
SELECT coalesce(5, NULL, 100) FROM STUDENT1;
SELECT coalesce(NULL, 5, 100) FROM STUDENT1;
SELECT*FROM STUDENT1;





commit;






