show databases;
use workers;
create table employee_table(  
    emp_id int primary key AUTO_INCREMENT,  
    emp_name varchar(45) NOT NULL,  
    occupation varchar(35) NOT NULL,  
    age int NOT NULL
    );
    show tables;
    desc employee_table;
    
 -- Insert data into employee_table
INSERT INTO employee_table (emp_name, occupation, age) VALUES
('John Doe', 'Engineer', 30),
('Jane Smith', 'Manager', 35),
('Michael Johnson', 'Developer', 28),
('Emily Davis', 'Designer', 25),
('Robert Brown', 'Analyst', 32),
('Sarah Wilson', 'Marketing', 29),
('David Martinez', 'Sales', 31),
('Jennifer Taylor', 'HR', 33),
('Daniel Clark', 'Accountant', 27),
('Jessica White', 'Consultant', 34),
('Matthew Lee', 'Researcher', 26),
('Amanda Harris', 'Customer Service', 30),
('Christopher Moore', 'Writer', 29),
('Ashley Anderson', 'Artist', 31),
('Kevin Jackson', 'Lawyer', 35),
('Laura Thomas', 'Doctor', 32),
('Justin Hall', 'Chef', 28),
('Stephanie Walker', 'Teacher', 33),
('Ryan Garcia', 'Architect', 29),
('Olivia Allen', 'Scientist', 31);

select*from employee_table;

-- 1) ADD a column in the table 

-- ALTER TABLE table_name ,ADD new_column_name column_definition , [ FIRST | AFTER column_name ];  

alter table  employee_table add column experience smallint not null after occupation;

-- 2) Add multiple columns in the table

-- Syntax: ALTER TABLE table_name  ADD new_column_name column_definition [ FIRST | AFTER column_name ],
-- ADD new_column_name column_definition [ FIRST | AFTER column_name ],  

alter table employee_table add column firstName varchar (50) [after emp_id], lastName varchar (50) [after emp_name], salary decimal(7,2) not null [after experience]);