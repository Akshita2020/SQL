USE SIMPLELEARN;
CREATE TABLE STUDENTS (
ROLL_NO INT PRIMARY KEY auto_increment,
NAME VARCHAR(100),
AGE INT NOT NULL,
CITY VARCHAR(50) NOT NULL,
DOB DATE,
STREAM VARCHAR (25),
TOTAL_MARKS DECIMAL (4,2) 
);
SHOW TABLES IN SIMPLELEARN;
 DESC STUDENTS;
INSERT INTO simplelearn.students (NAME, AGE, CITY, DOB, STREAM, TOTAL_MARKS) VALUES
('Akash Kumar', 18, 'Mumbai', '2006-05-12', 'Science', 85.50),
('Neha Sharma', 19, 'Delhi', '2005-08-23', 'Commerce', 78.00),
('Rajesh Singh', 20, 'Kolkata', '2004-11-15', 'Arts', 72.25),
('Priya Patel', 19, 'Chennai', '2005-03-28', 'Science', 88.75),
('Amit Gupta', 18, 'Bangalore', '2006-07-09', 'Commerce', 79.50),
('Ritu Sharma', 20, 'Hyderabad', '2004-09-30', 'Arts', 71.00),
('Vikas Reddy', 19, 'Pune', '2005-01-18', 'Science', 90.25),
('Shivani Desai', 18, 'Ahmedabad', '2006-04-05', 'Commerce', 81.75),
('Suresh Mishra', 20, 'Jaipur', '2004-12-27', 'Arts', 75.50),
('Anjali Tiwari', 19, 'Lucknow', '2005-02-14', 'Science', 86.00),
('Nisha Singh', 18, 'Surat', '2006-06-10', 'Commerce', 82.25),
('Rahul Patel', 20, 'Kanpur', '2004-10-25', 'Arts', 74.75),
('Amita Das', 19, 'Nagpur', '2005-04-08', 'Science', 89.50),
('Sanjay Kumar', 18, 'Patna', '2006-03-01', 'Commerce', 83.50),
('Meena Gupta', 20, 'Indore', '2004-08-18', 'Arts', 73.25),
('Manoj Singh', 19, 'Thane', '2005-05-21', 'Science', 87.25),
('Anita Sharma', 18, 'Bhopal', '2006-01-03', 'Commerce', 80.00),
('Prakash Verma', 20, 'Visakhapatnam', '2004-11-28', 'Arts', 76.00),
('Pooja Shah', 19, 'Vadodara', '2005-07-14', 'Science', 84.75),
('Rakesh Yadav', 18, 'Firozabad', '2006-02-08', 'Commerce', 81.00),
('Sunita Mishra', 20, 'Ludhiana', '2004-10-03', 'Arts', 73.75),
('Kunal Singh', 19, 'Rajkot', '2005-06-16', 'Science', 88.00),
('Sujata Singh', 18, 'Agra', '2006-04-22', 'Commerce', 83.00),
('Gopal Sharma', 20, 'Varanasi', '2004-09-05', 'Arts', 75.25),
('Nisha Verma', 19, 'Allahabad', '2005-01-28', 'Science', 89.75),
('Rahul Gupta', 18, 'Amritsar', '2006-06-14', 'Commerce', 82.75),
('Kavita Singh', 20, 'Dhanbad', '2004-12-17', 'Arts', 74.00),
('Alok Kumar', 19, 'Srinagar', '2005-03-10', 'Science', 86.50),
('Rajesh Verma', 18, 'Ranchi', '2006-07-26', 'Commerce', 80.50),
('Sakshi Singh', 20, 'Guwahati', '2004-02-09', 'Science', 93.25);

-- BOOLEAN EXPERSSION (EVALUEATES CONDITION FOR A SINGLE value )
SELECT*FROM STUDENTS WHERE CITY = 'PUNE';
SELECT*FROM STUDENTS WHERE TOTAL_MARKS >= 90;

-- NUMERIC EXPERSSION (TO PERFORM MATHEMATICAL OPERATION)
SELECT*FROM STUDENTS WHERE TOTAL_MARKS/2>40;

-- AVERAGE EXPERSSION
SELECT AVG(TOTAL_MARKS) AS AVG_MARKS FROM STUDENTS;

-- SUM EXPERSSION
SELECT SUM(TOTAL_MARKS) AS SUM_MARKS FROM STUDENTS;

-- MINIMUM EXPERSSION
SELECT MIN(TOTAL_MARKS) AS MINIMUM_MARKS FROM STUDENTS;

-- DATE EXPERSSION 
SELECT*FROM STUDENTS WHERE DOB > '2000-01-01';
SELECT current_timestamp();

COMMIT;
