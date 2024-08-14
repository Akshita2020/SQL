use testing;
create table food (
food_id int primary key auto_increment,
famous_dish varchar(50) not null,
state varchar(50) not null, 
price decimal (4,2)
);

insert into food (famous_dish, state, price) values ('poha-jalebi', 'M.P', 50.00);
insert into food (famous_dish, state, price) values ('dhokla', 'Gujrat', 50.00);
insert into food (famous_dish, state, price) values ('litti-chokha', 'u.p', 70.00);
insert into food (famous_dish, state, price) values ('Rasgulla', 'West Bengal', 50.00);
insert into food (famous_dish, state, price) values ('Dal-Batti', 'Rajsthan', 80.00);
insert into food (famous_dish, state, price) values ('vadapav', 'Mumabai', 20.00);
select *from food;

-- to check whether a particular value belongs to the table use in or not in 

select *from food where famous_dish in ('dhokla', 'vadapav', 'Rasgulla');
select *from food where famous_dish not in ('vadapav');

-- order by is used to perform accending and descinding order

select*from food order by food_id asc; 
select*from food order by food_id desc;
select*from food order by food_id, price desc;  

-- limit is used to confined no of values reterival 

select*from food order by food_id desc limit 5 ; 
select*from food order by food_id, price desc limit 5; 

-- to retrivre any random value 

select*from food random limit 5 ;   