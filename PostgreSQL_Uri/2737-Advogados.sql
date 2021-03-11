CREATE TABLE lawyers(
  register INTEGER PRIMARY KEY,
  name VARCHAR(255),
  customers_number INTEGER
 );
  
  
 INSERT INTO lawyers(register, name, customers_number)
 VALUES (1648, 'Marty M. Harrison', 5),
	(2427, 'Jonathan J. Blevins', 15),
	(3365, 'Chelsey D. Sanders', 20),
	(4153, 'Dorothy W. Ford', 16),
	(5525, 'Penny J. Cormier', 6);

(select name,customers_number from lawyers
order by customers_number desc
limit 1)
union all
(select name,customers_number from lawyers
order by customers_number
limit 1)
union all
(select 'Average'as name,cast(avg(customers_number)as int)as customers_number from lawyers);
