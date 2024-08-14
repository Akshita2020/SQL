   -- creating databse names shoppingstore 
   create database ShoppingStore;
   use ShoppingStore;
   
   -- creating table categories for refrences
   create table categories(
   category_id int primary key auto_increment,
   category_name varchar(200) not null  );
   
   -- creating table named products
   create table products (
   product_id int primary key auto_increment,
   product_name varchar(50) not null,
   category_id int not null,
   price decimal (10,2) not null,
   quantity int not null,
   description text,
   created_at timestamp default current_timestamp,
   updated_at timestamp default current_timestamp on update current_timestamp,
   foreign key ( category_id ) references categories  ( category_id )
   );
   
-- Inserting data into categories table
INSERT INTO categories (category_name) VALUES
('Electronics'),
('Clothing'),
('Books'),
('Home & Kitchen'),
('Toys'),
('Sports'),
('Beauty'),
('Food & Grocery'),
('Automotive'),
('Healthcare');
select*from categories;

-- Inserting data into products table
INSERT INTO products (product_name, category_id, price, quantity, description)
VALUES
('Laptop', 1, 999.99, 50, '15.6-inch, 8GB RAM, 256GB SSD'),
('T-shirt', 2, 19.99, 100, '100% cotton, black, size M'),
('Java Programming Book', 3, 29.99, 20, 'Introduction to Java programming language'),
('Coffee Maker', 4, 49.99, 30, '12-cup programmable coffee maker'),
('LEGO Set', 5, 79.99, 15, 'Classic LEGO bricks set'),
('Basketball', 6, 24.99, 40, 'Official size and weight'),
('Lipstick', 7, 9.99, 50, 'Red matte lipstick'),
('Rice', 8, 5.99, 200, '5kg bag of Jasmine rice'),
('Car Battery', 9, 99.99, 10, '12V maintenance-free car battery'),
('Bandages', 10, 3.99, 100, 'Pack of assorted adhesive bandages');
select*from  products;
-- Updating data
update products set quantity = 20, updated_at= Current_timestamp where product_id =1;

-- Retriving data (price) sorted by in descending order
select*from products order by price desc; 

-- Retriving data (price) sorted by maxium price
select*from products where price= (select max(price)) order by price desc limit 1;

-- Retriving data (average price ) of total products
select avg(price) as average_price from products;  

-- Retriving data (total Quantatity)
select sum(quantity) as total_quantity from products;

commit; 

