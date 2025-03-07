/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title in reverse alphabetical order.
 */

select film.film_id, film.title, count(*) as "count"
from film 
join inventory on film.film_id = inventory.film_id 
group by film.title, film.film_id
having film.title ilike 'h%'
order by film.title desc;

