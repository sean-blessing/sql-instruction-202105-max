select * from student;
SELECT * FROM student
 order by lastname, firstname;
 
-- distinct keyword
select distinct state from student; 

-- count function
select count(*) from student;

-- how many students from ohio?
select count(*) from student
 where state = 'OH';
 
-- how many students per state?
select state, count(state) count
  from student
group by state
 order by count desc;

-- use max/min on birthdate
select min(birthday) from student;

-- most common middle initial?
select middleinitial, count(middleinitial) from student
 group by middleInitial
 order by count(middleinitial) desc
 limit 1;
