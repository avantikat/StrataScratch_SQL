Find the 3 most profitable companies in the entire world.
Output the result along with the corresponding company name.
Sort the result based on profits in descending order.

SQL QUERY FOR ABOVE STATEMENT:

select company , profits
from forbes_global_2010_2014
GROUP BY company
HAVING MAX(profits)
ORDER BY profits DESC
LIMIT 3;
