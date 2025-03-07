/*
 * Use a JOIN to list the total paid by each customer.
 * List the customers alphabetically by last name.
 * Use tables payment and customer.
 */


select customer.customer_id,customer.first_name, customer.last_name, sum(payment.amount) as "sum"
from customer 
join payment on payment.customer_id = customer.customer_id 
group by customer.customer_id,customer.first_name, customer.last_name
order by customer.last_name; 
