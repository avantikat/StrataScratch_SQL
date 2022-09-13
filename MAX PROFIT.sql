Find the most profitable company in the financial sector of the entire world along with its continent


SQL QUERY FOR ABOVE STATEMENT:

select company,continent
from forbes_global_2010_2014
WHERE profits = (SELECT MAX(profits) FROM forbes_global_2010_2014 );
