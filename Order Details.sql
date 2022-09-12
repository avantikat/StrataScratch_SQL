Find order details made by Jill and Eva.
Consider the Jill and Eva as first names of customers.
Output the order date, details and cost along with the first name.
Order records based on the customer id in ascending order.

SQL QUERY FOR ABOVE STATEMENT:

select c.first_name, o.order_date,o.order_details, o.total_order_cost 
from customers AS c join orders AS o ON c.id = o.cust_id
WHERE first_name ='Jill' OR first_name='Eva'
ORDER BY c.id
