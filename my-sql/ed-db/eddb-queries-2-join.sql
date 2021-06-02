-- 3 table join major, majorclass, class
select description, c.code, subject
  from major m
  join majorclass
    on majorid = m.id
  join class c
    on classid = c.id
 where Description = 'General Business';