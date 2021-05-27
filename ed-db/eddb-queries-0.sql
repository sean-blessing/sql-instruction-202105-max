-- basic where clause
SELECT * FROM student
 where statecode = 'KY';
 
-- where clause w/ or
SELECT * FROM student
 where statecode = 'KY' or statecode = 'IN';
 
-- where clause w/ in
SELECT * FROM student
 where statecode in ('KY', 'IN');

-- not
-- SELECT * FROM student
--  where statecode not = 'KY';    --> this doesn't work!

-- not
SELECT * FROM student
 where statecode != 'KY';
 
-- not
SELECT * FROM student
 where not statecode = 'KY';
 
-- between
select * from student
 where gpa between 2.0 and 3.0
 order by gpa;
 
-- like
select * 
  from student
-- where lastname like binary 'B%'
 where lastname like 'B%s'
 order by lastname;
 
-- underscore - states starting with 'I'
select * from student
 where StateCode like 'I_';
 
