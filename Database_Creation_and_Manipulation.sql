/* Database Creation and Manipulation :
Q.1 Create a Database 
1) Create a new database named SchoolDatabase.
2) Inside the SchoolDatabase, create a table named Students with columns student_id (auto-increment primary key), first_name, last_name, and birthdate.
3) In the SchoolDatabase, create another table named Courses with columns course_id (auto-increment primary key), course_name, and instructor.
4) Insert three sample student records into the Students table in the SchoolDatabase.
5) Insert five sample course records into the Courses table in the SchoolDatabase.  */

create database SchoolDatabase;
use SchoolDatabase;
create table Students (
 student_id int primary key auto_increment,
  first_name varchar (50),
  last_name varchar (50), 
  birthdate date 
  );
  
  desc students;
  
  create table  Courses (
   course_id int primary key auto_increment,
   course_name varchar (50),
   instructor varchar (30)
   );
   
   desc courses;
insert into students ( student_id, first_name,last_name, birthdate)
values (1,'MARCUS', 'DOE', '2000-01-24');
insert into students ( first_name,last_name, birthdate)
values ('Robert','LUNA', '1999-03-23');
insert into students (first_name,last_name, birthdate)
values ('Mohan', 'DOE', '2001-04-29');

select*from students;

insert into Courses (course_id,course_name,instructor) value (201, 'MBA', 'Rajul Soni');
insert into Courses (course_name,instructor) value ('BSC', 'Spiderman Pandey');
insert into Courses (course_name,instructor) value ( 'Data Anyaltics', 'Suman Malakar');
insert into Courses (course_name,instructor) value ('IT', 'Shaktiman Yadav');
insert into Courses (course_name,instructor) value ('CS', 'Dholu_Bholu Sharma');

select*from Courses;

 /* Q.2  Write a SQL statement to create a table named jobs including columns 
 job_id, job_title, min_salary, max_salary and check whether the max_salary amount exceeds the upper limit 25000. */
 
create table JOBS (
job_id int primary key,
job_title varchar(50),
min_salary decimal (10, 2), 
max_salary decimal (10,2) check (max_salary<=25000)
);
desc JOBS;
commit;  

 /* Q.3 Write a SQL statement to create a table job_history including columns employee_id, start_date, end_date, job_id and department_id and make sure that, the employee_id column does not contain any duplicate value at the time of insertion and the foreign key column job_id contain only those values which are exists in the jobs table.
 here is the structure of the table jobs; */ 

CREATE TABLE  job_history ( 
employee_id int primary key auto_increment not null, 
start_date date , 
end_date date ,
job_id int,
department_id int
 );


 /* Q. 4. Write a SQL statement to create a table employees including columns 
 employee_id, first_name, last_name, email, phone_number hire_date, job_id, salary, commission, manager_id and department_id 
 and make sure that, the employee_id column does not contain any duplicate value at the time of insertion and the foreign key 
 columns combined by department_id and manager_id columns contain only those unique combination values, 
 which combinations are exists in the departments table.
Assume the structure of departments table below.
+-------------------------------+-----------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-------------------------------+-----------------+------+-----+---------+-------+
| DEPARTMENT_ID   | decimal(4,0) | NO   | PRI | 0       |       |
| DEPARTMENT_NAME | varchar(30)  | NO   |       | NULL    |       |
| MANAGER_ID    | decimal(6,0) | NO   | PRI | 0       |       |
| LOCATION_ID   | decimal(4,0) | YES  |     | NULL    |       |
+------------------------------+------------------+--------+-----+---------+-------+  */
create table department(
department_id decimal (4,0) not null primary key,
department_name varchar(30) not null,
manager_id decimal(6,0),
location_id decimal (4,0)
);

CREATE TABLE employees(  
  employee_id int primary key auto_increment,
  first_name varchar(50) default null, 
  last_name varchar(50) not null, 
  email varchar(50) not null, 
  phone_number varchar(10) default null,
  hire_date date, 
  job_id int, 
  salary decimal(8,2), 
  commission decimal(4,2), 
  manager_id decimal(6,0),
  department_id decimal(4,0),
  foreign key (department_id,manager_id) references department (department_id,manager_id)
);  
commit;

/*
Q. 5. Write a SQL statement to create a table employees including columns employee_id, first_name, last_name, job_id, salary
 and make sure that, the employee_id column does not contain any duplicate value at the time of insertion,
 and the foreign key column job_id, referenced by the column job_id of jobs table, 
 can contain only those values which are exists in the jobs table. The InnoDB Engine have been used to create the tables. 
 The specialty of the statement is that, The ON UPDATE CASCADE action allows you to perform cross-table update
 and ON DELETE RESTRICT action reject the deletion. The default action is ON DELETE RESTRICT.

Assume that the structure of the table jobs and InnoDB Engine have been used to create the table jobs.
CREATE TABLE IF NOT EXISTS jobs ( 
JOB_ID integer NOT NULL UNIQUE PRIMARY KEY, 
JOB_TITLE varchar(35) NOT NULL DEFAULT ' ', 
MIN_SALARY decimal(6,0) DEFAULT 8000, 
MAX_SALARY decimal(6,0) DEFAULT NULL
)ENGINE=InnoDB;
+--------------------+-----------------+-------+-----+---------+-------+
| Field                 | Type             | Null  | Key | Default | Extra |
+--------------------+-----------------+-------+-----+---------+-------+
| JOB_ID            | int(11)           | NO   | PRI | NULL    |       |
| JOB_TITLE      | varchar(35)  | NO   |        |              |       |
| MIN_SALARY  | decimal(6,0) | YES  |       | 8000       |       |
| MAX_SALARY | decimal(6,0) | YES  |       | NULL     |       |
+--------------------+-----------------+--------+-----+---------+-------+
*/

CREATE TABLE IF NOT EXISTS jobs ( 
JOB_ID integer NOT NULL UNIQUE PRIMARY KEY, 
JOB_TITLE varchar(35) NOT NULL DEFAULT ' ', 
MIN_SALARY decimal(6,0) DEFAULT 8000, 
MAX_SALARY decimal(6,0) DEFAULT NULL
)ENGINE=InnoDB;

CREATE TABLE employees (
 employee_id INT PRIMARY KEY, 
 first_name VARCHAR(50), 
 last_name VARCHAR(50), 
 job_id INT, 
 salary DECIMAL(8,2),
 foreign key(job_id) references jobs (job_id)
ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE=InnoDB; 

commit;
