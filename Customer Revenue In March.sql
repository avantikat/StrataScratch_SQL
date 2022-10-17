Calculate the total revenue from each customer in March 2019. Include only customers 
who were active in March 2019.
Output the revenue along with the customer id and sort the results based on the revenue in descending order.


sql query for above statement:

select cust_id, sum(total_order_cost)AS revenue 
from orders
where order_date like '2019-03%'
group by cust_id
order by revenue  DESC;
