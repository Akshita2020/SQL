use testing; 
create table employee (
id int primary key,
name varchar (50),
age int,
department varchar (30)
);
desc employee;
alter table employee add column salary decimal (10,2);

insert into employee (id, name, age, department, salary)
 values (1,'jhon doe', 30, 'IT', 50000.00),
	    (2,'jane smith', 25, 'HR', 45000.00),
        (3,'david jhonson', 35, 'Finance', 60000.00);   
      select*from employee;  
        
-- to update single and multiple values 

update employee set department = 'Marketing' where id= 1;
update employee set name = 'Ram' where id = 1;
update employee set age = 34 where name = 'jane smith';
update employee set salary = 50000.00 where name = 'jane smith';
update employee set age = 34, salary = 60000.00 where id in (2,3);
update employee set age = 34, salary = 80000.00 where id not in (2,3);

-- Update with subquery 
update employee set salary = salary*1.1 where id in (1,2,3); -- it will increase the salary again if you will execute it again 
 rollback;
 
 -- Update with Aggregate functions 
 update employee set salary = salary + (select avg (salary)) where department = 'IT';