-- create and select the database
DROP DATABASE IF EXISTS bmdb;
CREATE DATABASE bmdb;
USE bmdb;

-- create Movie table
-- DROP TABLE IF EXISTS Movie;
Create table Movie (
ID 			integer 		primary key identity(1,1),
Title 		varchar(255) 	not null unique,
Year 		integer 		not null,
Rating 		varchar(5) 		not null,
Director 	varchar(255) 	not null
-- CONSTRAINT utitle unique (Title)
);

-- create Actor table
-- DROP TABLE IF EXISTS Actor;
Create table Actor (
ID 			integer 		primary key identity(1,1),
FirstName 	varchar(255) 	not null,
LastName 	varchar(255) 	not null,
Gender 		varchar(1) 		not null,
BirthDate 	date 			not null,
CONSTRAINT unq_actor unique (FirstName, LastName, BirthDate)
);

-- create Credits table
-- business rule - combo of actor+movie must be unique
Create table Credit (
ID 				integer 			primary key identity(1,1),
ActorID 		integer 			not null,
MovieID 		integer 			not null,
Role		 	varchar(255)		not null,
Foreign Key (ActorID) references Actor(ID),
Foreign Key (MovieID) references Movie(ID),
CONSTRAINT act_mov unique (ActorID, MovieID)
);

-- Add some movies
 insert into Movie (Title, Year, Rating, Director) values
 	('Revenge of the Nerds', 1984, 'R', 'Jeff Kanew'),
 	('Avengers Infinity War', 2018, 'PG-13', 'Anthony Russo, John Russo');
    
-- Add some actors
 insert into Actor (FirstName, LastName, Gender, BirthDate) VALUES
 	('Robert', 'Downey Jr.', 'M', '1965-4-4'),
 	('Chris', 'Hemsworth', 'M', '1983-09-11'),
    ('Scarlett', 'Johansson', 'F', '1984-11-22'),
 	('Robert', 'Carradine', 'M', '1954-3-24'),
 	('Anthony', 'Edwards', 'M', '1962-7-19');
    
-- Add movie credits for actors
 insert into Credit (ActorID, MovieID, Role) VALUES
 	(1, 2, 'Tony Stark - Iron Man'),
    (2, 2, 'Thor'),
    (3, 2, 'Natasha Romanoff - Black Widow'),
    (4, 1, 'Lewis'),
    (5, 1, 'Gilbert');

-- create a user and grant privileges to that user
-- DROP USER IF EXISTS bmdb_user@localhost;
-- CREATE USER bmdb_user@localhost IDENTIFIED BY 'sesame';
-- GRANT SELECT, INSERT, DELETE, UPDATE ON bmdb.* TO bmdb_user@localhost;
CREATE LOGIN bmdb_user WITH PASSWORD = 'sesame';
grant SELECT, INSERT, DELETE, UPDATE on bmdb to bmdb_user;