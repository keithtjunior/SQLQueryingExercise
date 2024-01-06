insert into products (name, price, can_be_returned) values
('chair', 44.00, false),
('stool', 25.99, true),
('table', 124.00, false);

select * from products;
select name from products;
select name, price from products;

insert into products (name, price, can_be_returned) values
('desk', 234.99, false);

select * from products where can_be_returned = true;
select * from products where price < 44;
select * from products where price between 22.50 and 99.99;

update products set price = price-20;

delete from products where price < 25;

update products set price = price+20;

update products set can_be_returned = true;