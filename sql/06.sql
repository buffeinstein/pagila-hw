/*
 * List the last names of actors, as well as how many actors have that last name.
 * HINT:
 * Use the count() aggregation function and group by the actor's last name.
 */

select last_name, count(last_name) as last_name_count -- step 3: the comma does NOT create a table, but it does return the two expressions (last_name, actor_count) separated by the comma with two columns, and count(*) counts the amount of rows in each group 
from actor -- step 1: we choose the table
group by last_name -- step 2: we will group rows by last name 
order by last_name_count desc; -- step 4: sort by count
