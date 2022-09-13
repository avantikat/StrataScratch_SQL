Find the most profitable company in the financial sector of the entire world along with its continent


SQL QUERY FOR ABOVE STATEMENT:

select continent,company
from forbes_global_2010_2014
where sector='Financials' and 
profits in (select max(profits) from forbes_global_2010_2014 )
