
SQL QUERY FOR ABOVE STATEMENT:

SELECT bike_number,MAX(end_time) AS last_used 
FROM dc_bikeshare_q1_2012
GROUP BY bike_number
ORDER BY end_time DESC;
