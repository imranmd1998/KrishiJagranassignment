--Primary Key in SQL--
--A Primary key is a unique column we set in a table to easily identify and locate data in queries. A table can have only one primary key.--
CREATE TABLE DataFlair(
emp_id varchar(5) NOT NULL,
name varchar(50),
location varchar(50),
experience int,
PRIMARY KEY(emp_id)
);

--Foreign key in SQL--
--A Foreign key is beneficial when we connect two or more tables so that data from both can be put to use parallelly.--

CREATE TABLE location(
location_id varchar(5) NOT NULL,
location varchar(50) NOT NULL,
office_size int,
PRIMARY KEY(location_id),
FOREIGN KEY(location) REFERENCES DataFlair(location));

SELECT * FROM DataFlair;

SELECT emp_id , name, 
location.location_id,DataFlair.location 
FROM DataFlair RIGHT JOIN Location 
ON DataFlair.location=Location.location 
WHERE emp_id IS NOT NULL;



