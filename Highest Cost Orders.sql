Find the customer with the highest daily total order cost between 2019-02-01 to 2019-05-01. 
If customer had more than one order on a certain day, sum the order costs on daily basis.
Output customer's first name, total cost of their items, and the date.


SQL QUERY FOR ABOVE STATEMENT:

select c.first_name,sum(o.total_order_cost) AS total_cost , o.order_date
from customers AS c join orders AS o 
on c.id = o.cust_id
where order_date between '2019-02-01' AND '2019-05-01'
GROUP BY o.order_date,c.first_name 
ORDER BY total_cost DESC
LIMIT 1;
