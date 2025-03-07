/*
 * Display the first and last name of each actor in a single column in upper case letters.
 * Name the column Actor Name, and sort the results alphabetically.
 */

/* SELECT UPPER(actor.first_name || actor.last_name)
AS 'Actor Name'
FROM actor ORDER BY 'Actor name'; 

SELECT UPPER(CONCAT(actor.first_name + ' ' actor.last_name)) 
As 'Actor Name'
FROM actor ORDER BY 'Actor Name';

select (first_name || ' ' || last_name) from actor
as "Actor Name" -- make sure to use double quotation marks to mark as identifier instead of string literal
from actor order by "Actor Name"; 

As 'Actor Name' -- creates a new column
FROM actor ORDER BY 'Actor Name'  -- this comes last, just orders the list alphabetically 
*/

select (first_name || ' ' || last_name) as "Actor Name" from actor order by "Actor Name";  
