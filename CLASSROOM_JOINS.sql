CREATE DATABASE JOINS;
USE JOINS;
CREATE TABLE ITEMS( ITEM_ID int primary key, item_name varchar(25),
item_category varchar(25),
item_price decimal);

create table details ( item_id int primary key, item_category int, item_type varchar(30), 
item_qty int);

alter table items modify column item_category int;

insert into items values ( 1,'parle',1,10),
( 2,'goodday',1,20), ( 3,'monaco',2,10),
( 4,'snacks',2,10),( 5,'oreo',3,25),( 6,'burbon',3,30),
( 7,'coconut',4,40),( 8,'coco',4,50);

insert into details values (1,1,'methi', 100),
(2,2,'namkeen', 200),(3,3,'cream', 250),(4,4,'cookies', 50);

commit;

