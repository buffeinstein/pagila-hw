/*
 * List last names of actors and the number of actors who have that last name,
 * but only for names that are shared by at least two actors
 */


/*
 * WHERE filters individual rows before any grouping or aggregation happens. It applies conditions directly to the columns of the table.

HAVING filters groups after the GROUP BY clause has been applied. It’s used to filter on aggregated values, such as counts, sums, or averages.
*/

select last_name, count(last_name) as last_name_count
from actor 
group by last_name 
having count(last_name) > 1 
order by last_name_count desc; 
