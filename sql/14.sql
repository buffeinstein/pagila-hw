/*
 * Use a JOIN to list all films in the "Family" category.
 * Use table category, film_category, and film.
 */

-- we are trying to merge three tables
-- we can only merge on category_id for film and film category 
-- but then for film...

select film.title
from film 
join film_category on film.film_id = film_category.film_id
join category on category.category_id = film_category.category_id
where film_category.category_id = '8'
order by film.title; 
