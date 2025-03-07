/*
 * Use a JOIN to list each film and the number of actors who are listed for that film.
 * Use tables film and film_actor.
 */

select film.title, film.film_id, count(*) as actor_count
from film_actor
join film on film.film_id = film_actor.film_id
group by film.title, film.film_id
order by actor_count, film.title; 

-- ordering by film_id got me very close, but with like a few out of order

-- Even if you assume that film_id uniquely identifies a film and, therefore, its title is uniquely tied to that film_id, PostgreSQL doesn't automatically infer that dependency unless it's explicitly defined in the schema. Without including film.title in the GROUP BY clause, PostgreSQL doesn't know which title to pick for each group, so it raises an error to avoid potential ambiguity.In short, you must include film.title in the GROUP BY clause to ensure every column in your SELECT list has a clear, single value per group.
