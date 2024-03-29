--Add a product to the table with the name of “chair”, price of 44.00, and can_be_returned of false.
-- Add a product to the table with the name of “stool”, price of 25.99, and can_be_returned of true.
-- Add a product to the table with the name of “table”, price of 124.00, and can_be_returned of false.
insert into products (name, price, can_be_returned) values
('chair', 44.00, false),
('stool', 25.99, true),
('table', 124.00, false);

-- Display all of the rows and columns in the table.
-- Display all of the names of the products.
-- Display all of the names and prices of the products.
select * from products;
select name from products;
select name, price from products;

-- Add a new product - make up whatever you would like!
insert into products (name, price, can_be_returned) values
('desk', 234.99, false);

-- Display only the products that ***can_be_returned***
-- Display only the products that have a price less than 44.00.
-- Display only the products that have a price in between 22.50 and 99.99.
select * from products where can_be_returned = true;
select * from products where price < 44;
select * from products where price between 22.50 and 99.99;

-- There’s a sale going on: Everything is $20 off! Update the database accordingly.
update products set price = price-20;

-- Because of the sale, everything that costs less than $25 has sold out. Remove all products whose price meets this criteria.
delete from products where price < 25;

-- And now the sale is over. For the remaining products, increase their price by $20.
update products set price = price+20;

-- There is a new company policy: everything is returnable. Update the database accordingly.
update products set can_be_returned = true;