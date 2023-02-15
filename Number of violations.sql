You're given a dataset of health inspections. Count the number of violation in an inspection in 'Roxanne Cafe' for each year. If an inspection resulted in a violation, 
there will be a value in the 'violation_id' column. Output the number of violations by year in descending order.





select year(inspection_date) AS year, count(violation_id) from sf_restaurant_health_violations
where business_name ='Roxanne Cafe'
group by year
order by count(violation_id) DESC;
