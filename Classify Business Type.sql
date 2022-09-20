Classify each business as either a restaurant, cafe, school, or other. A restaurant should have the word 'restaurant'
in the business name. For cafes, either 'cafe', 'café', or 'coffee' can be in the business name. 'School' should be in 
the business name for schools. All other businesses should be classifi
ed as 'other'. Output the business name and the calculated classification.



SQL QUERY FOR ABOVE STATEMENT:

select 
       business_name,
       case
            when business_name like '%restaurant%' then 'restaurant'
            when business_name like '%school%' then 'school'
            when business_name like '%café%' then 'cafe'
            when business_name like '%coffee%' then 'cafe'
            when business_name like '%cafe%' then 'cafe'
            else 'other' end as classification
from sf_restaurant_health_violations
group by binary business_name;
