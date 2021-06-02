-- set a variable and use in a select statement
-- set @gpa = 3.5;
-- select * from student
--  where gpa >= @gpa;

-- set a variable within a query and use it in 2nd query
select
	@max_gpa := max(gpa)
  from student;
select * from student
 where gpa = @max_gpa;
