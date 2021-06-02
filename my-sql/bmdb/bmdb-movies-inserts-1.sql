select * from movie;
-- insert without declaring column names
insert into movie values
 (3, 'Inception', 2010, 'PG-13', 'Christopher Nolan');

-- insert using column names
insert into movie (Title, Rating, Year, ID, Director)
 values ('Jurassic Park', 'PG-13', 1993, 10, 'Steven Spielberg');
 
-- insert but let db generate the id
insert into movie (Title, Year, Rating, Director)
 values ('Fight Club', 1999, 'R', 'David Fincher');
 
-- insert multiple rows
insert into movie (Title, Year, Rating, Director)
 values ('Clerks', 1994, 'R', 'Kevin Smith'),
	    ('The Shining', 1980, 'R', 'Stanley Kubrick'),
        ('Silence of the Lambs', 1991, 'R', 'Jonathan Demme');
