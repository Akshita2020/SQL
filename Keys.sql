use testing;

-- Primary key and unique key
create table mykeys (
id int primary key auto_increment,
keyname varchar(255) unique
); 

-- Foregin key
create table yourkey(
id int primary key, 
yourkey varchar(25),
foreign key (id) references mykeys(id)
);

-- if you have forgtten to add foregin key
select*from employee;
create table empdetail (
id int primary key auto_increment,
fathersname varchar(25),
DOB date,
address varchar(255)
);
alter table empdetail add constraint foreign key(id) references employee(id);




