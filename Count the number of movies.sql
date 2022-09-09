
Count the number of movies that Abigail Breslin was nominated for an oscar.

SQL QUERY FOR ABOVE STATMENT:

select count(movie) AS n_movies_by_abi
from oscar_nominees
WHERE nominee = 'Abigail Breslin' ;
