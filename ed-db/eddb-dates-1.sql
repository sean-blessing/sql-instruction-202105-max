select * from actor;
-- date functions (p. 119)
select *, date_add(birthdate, interval 10 day) as new_date
 from actor;

-- date 'parts'... month
select *, month(birthDate)
  from actor;
select *, day(birthDate)
  from actor;
select *, year(birthDate)
  from actor;

-- datediff - returns # of days between
select *, datediff(curdate(), birthdate)
 from actor;