/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */

-- recall that "" is alias, and '' denotes string literals 
select staff.first_name, staff.last_name, sum(payment.amount) as "sum"
from staff 
join payment on staff.staff_id = payment.staff_id
where payment.payment_date >= '2020-01-01' and payment.payment_date < '2020-02-01'
group by staff.first_name, staff.last_name; 
