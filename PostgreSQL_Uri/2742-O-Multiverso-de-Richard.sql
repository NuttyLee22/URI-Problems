CREATE TABLE dimensions(
	id INTEGER PRIMARY KEY,
	name varchar(255)
);

CREATE TABLE life_registry(
	id INTEGER PRIMARY KEY,
	name VARCHAR(255),
	omega NUMERIC,
	dimensions_id INTEGER REFERENCES dimensions (id)
);


INSERT INTO dimensions(id, name)
VALUES 
      (1, 'C774'),
      (2, 'C784'),
      (3, 'C794'),
      (4, 'C824'),
      (5, 'C875');
      
INSERT INTO life_registry(id, name, omega, dimensions_id)
VALUES
	  (1, 'Richard Postman', 5.6, 2),	
	  (2, 'Simple Jelly', 1.4, 1),	
	  (3, 'Richard Gran Master', 2.5, 1),	
	  (4, 'Richard Turing', 6.4, 4),	
	  (5, 'Richard Strall',	1.0, 3);

  
select l.name, ROUND(l.omega*1.618,3) as "The N Factor"
from life_registry as l
inner join dimensions as d on l.dimensions_id=d.id
where d.name in('C875','C774') and l.name like 'Richard%'
order by "The N Factor";
