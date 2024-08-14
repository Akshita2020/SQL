CREATE DATABASE workers;
USE workers;

CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(15) NOT NULL,
    age INT,
    city VARCHAR(20),
    salary DECIMAL(10, 2)
);
INSERT INTO employees (emp_name, age, city, salary) VALUES ('ram', 23, 'indore', 250000.22);
INSERT INTO employees (emp_name, age, city, salary) VALUES ('ram', 22, 'indore', 200000.22);
INSERT INTO employees (emp_name, age, city, salary) VALUES ('shyam', 23, 'bhopal', 230000.22);
INSERT INTO employees (emp_name, age, city, salary) VALUES ('mohan', 24, 'gwalior', 20300.22); 
INSERT INTO employees (emp_name, age, city, salary) VALUES ('radhe', 25, 'indore', 200000.22);
INSERT INTO employees (emp_name, age, city, salary) VALUES ('radhika', 12, 'mumbai', 200000.22);
INSERT INTO employees (emp_name, age, city, salary) VALUES ('komalika', 25, 'kerala', 200440.22);
INSERT INTO employees (emp_name, age, city, salary) VALUES ('shaam', 27, 'indore', 200000.22);
INSERT INTO employees (emp_name, age, city, salary) VALUES ('ghanshyam', 28, 'kolkata', 230000.22);
INSERT INTO employees (emp_name, age, city, salary) VALUES ('ram', 25, 'uttarakhand', 250000.22);
INSERT INTO employees (emp_name, age, city, salary) VALUES ('shiv', 24, 'banaras', 240000.22);
savepoint at;
INSERT INTO employees (emp_name, age, city, salary) VALUES ('shiv', 24, 'banaras', 240000.22);
alter table employees drop city;
select*from employees;
SELECT*FROM employees where age>22;
select id, emp_name, age from employees;
select *from employees where city = 'indore';
update employees set city= 'chennai' where id =1;
delete	from employees where id= 1;
rollback;
create user radhika;
grant insert, select on employees to radhika;
revoke insert, select on employees from radhika;

select id, emp_name, salary, salary+10000 as emp_newsalary from employees;
select id, emp_name, salary, salary-2000 as emp_newsalary from employees;
select id, emp_name, salary, salary*2 as emp_newsalary from employees;
select  id, emp_name, salary, salary/2 as emp_newsalary from employees;
select*from employees where salary <= 200000.22;
select*from employees where salary >=200000;
select*from employees where salary = 200000.22;
select*from employees where salary !=200000.22;
select*from employees where id >4;
select *from employees where id<7;
select*from employees where salary >=20000 and city ='indore';
select*from employees where salary= 200000.22 or id>=4;
select *from employees where salary between 200000 and 240000;
select *from employees where not salary =200000.22;
select*from employees where salary/2>120000;
select avg(salary) from employees;
select sum(salary) from employees;  