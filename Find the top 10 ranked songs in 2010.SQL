

What were the top 10 ranked songs in 2010?
Output the rank, group name, and song name but do not show the same song twice.
Sort the result based on the year_rank in ascending order.

SQL QUERY FOR ABOVE STATEMENT:
select DISTINCT(year_rank) ,group_name,	song_name
from billboard_top_100_year_end
WHERE year =2010 AND year_rank >=1 AND year_rank <=10;  
