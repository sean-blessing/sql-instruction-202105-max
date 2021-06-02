select * from student;
-- Adding SAT column in select
Select Lastname, SAT, 'A' as 'ABC' from Student
	Where SAT > 1200
Union
Select Lastname, SAT, 'B' as 'ABC' from Student
	Where SAT <= 1200 and SAT > 1000
Union
Select Lastname, SAT, 'C' as 'ABC' from Student
	Where SAT < 1000

