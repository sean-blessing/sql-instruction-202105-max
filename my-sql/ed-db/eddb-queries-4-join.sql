-- left join - student - major
select firstname, lastname, majorid, description
  from student
  left outer join major
    on majorid = major.id;