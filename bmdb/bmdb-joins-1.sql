select * from movie;

-- left outer join
select title, year, firstname, lastname, role from movie
  left outer join credit
    on MovieID = movie.id
  left outer join actor
    on ActorID = actor.id;
    
-- right outer join
select title, year, firstname, lastname, role from actor
  join credit
    on actorid = actor.id
  right outer join movie
    on movieid = movie.id;