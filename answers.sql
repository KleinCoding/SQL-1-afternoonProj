CREATE TABLE person (
  person_id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  age INTEGER,
  height FLOAT,
  city VARCHAR(50),
  favorite_color VARCHAR(50)
  )

insert into person (name, age, height, city, favorite_color)
VALUES ('Jason', 29, 167.64, 'Dallas', 'Red');
VALUES ('Anthony', 27, 160, 'Dallas', 'Grey');
VALUES ('Beth', 32, 164, 'Irving', 'Rainbow');
VALUES ('Rachael', 30, 182, 'Florida', 'Unknown');
VALUES ('Mario', 24, 112, 'Castle de Peach', 'Red');
select * from person

select * from person 
order by height DESC

select * from person
order by height ASC

select * from person
order by age desc

select * from person
where age > 20

select * from person
where age = 18

select * from person
where age < 20 or age > 30

select * from person
where age != 27

select * from person
where favorite_color != 'red'

select * from person
where favorite_color != 'Red' and favorite_color != 'Blue'

select * from person
where favorite_color = 'Orange' or favorite_color = 'Green';

select * from person
where favorite_color in ('Orange', 'Green', 'Blue')

select * from person
where favorite_color in ('Yellow', 'Purple')


CREATE TABLE orders (
  order_id SERIAL,
  person_id integer,
  product_name VARCHAR(50),
  product_price float,
  quantity integer
  )
  drop table orders
  
insert into orders (product_name, product_price, quantity, person_id)
VALUES ('Fire Flower', 100, 10, 5);
VALUES ('1-Up Mushroom', 2700, 2, 5);
VALUES ('Power Star', 10000, 1, 5);
VALUES ('Tanooki Suit', 250, 4, 1);
VALUES ('Cat Bell', 600, 2, 1);

select * from orders

select sum(quantity) from orders

select sum(product_price * quantity) from orders

select sum(product_price * quantity) from orders
where person_id = 5

insert into artist (name)
values ('Mario')
values ('Princess Peach')
values ('Bowser')

select * from artist
order by name DESC limit 10

select * from artist
where name like 'Black%'

select * from artist
where name ilike '%Black%'

select * from artist
order by name ASC limit 5






select * from employee
where city = 'Calgary'

select * from employee
order by birth_date desc limit 1

select * from employee
order by birth_date asc limit 1

select * from employee
where reports_to = 2

select COUNT(*) from employee
where city = 'Lethbridge'




select count(*) from invoice
where billing_country  = 'USA'

select MAX(total) from invoice

select min(total) from invoice

select * from invoice
where total > 5

select count(*) from invoice
where total < 5

select count(*) from invoice
where billing_state in ('TX', 'CA', 'AZ')

select avg(total) from invoice

select sum(total) from invoice
