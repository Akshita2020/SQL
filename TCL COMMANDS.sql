use university;
create table GK (
D_code int primary key,
Dish varchar (25) not null,
price int,
QTY char(4) not null, 
catagory varchar(10),
orders varchar(10) not null,
Pay varchar(20)
);
alter table gk modify column d_code int auto_increment;
desc GK;
insert into gk values (101, 'kadhai panner',270, 1,'maincrs', 'take away','QR'); 
insert into gk values (102, 'kadhai',270, 1,'maincrs', 'take away','QR'); 
insert into gk values (103, ' panner',250, 1,'maincrs', 'take away','QR'); 
insert into gk values (104,'dahi bhale',220, 1,'maincrs', 'take away','QR'); 
insert into gk values (105,'kachori',20, 1,'maincrs', 'take away','QR'); 
insert into gk values (107,70, 1, 'take away','QR'); 
savepoint ak;
select*from gk;
insert into gk values (108, 'kachori', 240.00,1, 'maincrs','dgewdehdh' ,'op');
rollback to ak;
truncate table gk;
delete from gk where pay= 'QR';