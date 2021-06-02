--select count(*) from StudentClass;
--select count(*) from student;

-- student enrollments
select * from student s
  join studentclass sc
    on studentid = s.id;

-- list of student grades
-- student - studentclass - classgrade
select firstname, lastname, code, subject, ClassGradeValue
  from student s
  join studentclass sc on studentid = s.id
  join class c on classid = c.id;

-- student - class enrollment + grade + instructor
select concat(s.lastname, ', ', s.Firstname) as Student, code, subject, 
			ClassGradeValue, concat(i.Lastname, ', ', i.Firstname) as Instructor
  from student s
  join studentclass sc on studentid = s.id
  join class c on classid = c.id
  join instructor i on InstructorId = i.id;

-- outer join - students and class assignment
select Firstname, lastname, classid
  from Student s
  left outer join studentclass sc on studentid = s.id;

