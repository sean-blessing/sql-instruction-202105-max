-- join views
-- join student and major...
-- a list of all students and their respective majors
select firstname, lastname, code, description 
  from student
  join major m
    on majorid = m.id;
    
-- student class enrollment - slide 90
select firstname, lastname, code, subject, ClassGradeValue
  from studentclass
  join class
    on classid = class.id
join student
    on studentid = student.id;
