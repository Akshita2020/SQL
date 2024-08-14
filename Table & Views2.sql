use volcanus;
show tables from volcanus;

--  RENAME old_table TO new_table;  
Rename table shipping to shippings;

-- TRUNCATE Table

CREATE TABLE customer (    
    Id int PRIMARY KEY NOT NULL,     
    Name varchar(45) NOT NULL,     
    Product varchar(45) DEFAULT NULL,     
    Country varchar(25) DEFAULT NULL,     
    Year int NOT NULL    
);    
INSERT INTO customer ( Id, Name, Product, Country, Year)     
VALUES (1, 'Stephen', 'Computer', 'USA', 2015),     
(2, 'Joseph', 'Laptop', 'India', 2016),     
(3, 'John', 'TV', 'USA', 2016),    
(4, 'Donald', 'Laptop', 'England', 2015),    
(5, 'Joseph', 'Mobile', 'India', 2015),    
(6, 'Peter', 'Mouse', 'England', 2016);
desc customer;  
 SELECT * FROM customer;
 TRUNCATE TABLE customer;  

-- Truncate with multiple tables 

/* syntax SELECT Concat('TRUNCATE TABLE ', TABLE_NAME)  
FROM INFORMATION_SCHEMA.TABLES  
WHERE table_schema = 'database_name'; */ 

/* MySQL SHOW COLUMNS Command
syntax --> SHOW COLUMNS FROM table_name; */
show columns from customer;

-- columns information of a table from another database
/*  SHOW COLUMNS FROM database_name.table_name;  
  SHOW COLUMNS FROM table_name IN database_name;  */
  
  show columns from testing.food;
  show columns from food in testing;
  
  -- if want to see full column info -- SHOW FULL COLUMNS FROM table_name;  
  show full columns from books;
  
  -- If we want to show the execution plan of a SELECT statement, we can use the query as below:
  EXPLAIN SELECT * FROM customer;
 /* drop tables 
 DROP TABLE  table_name;  
 DROP TABLE IF EXISTS table_name1, table_name2, table, ......., table_nameN;  */ 

/*  Syntax of Creating Temporary Table
 CREATE TEMPORARY TABLE table_name (  
   column_1, column_2, ..., table_constraints);   */
create temporary table childrens (
id int primary key,
first_name varchar (20),
last_name varchar(20), 
age int,
schoolNmae varchar(50) 
); 

/* If the user wants to create a temporary table whose structure is the same as an existing table in the database
CREATE TEMPORARY TABLE temporary_table_name SELECT * FROM original_table_name LIMIT 0;  */
  create temporary table student2 select*from student limit 0;
  select*from student2;
  
  -- How to Drop Temporary Table in MySQL
  drop temporary table student2;