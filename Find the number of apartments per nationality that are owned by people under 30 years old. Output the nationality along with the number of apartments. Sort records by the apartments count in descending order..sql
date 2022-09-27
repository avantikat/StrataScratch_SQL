Find the number of apartments per nationality that are owned by people under 30 years old.
Output the nationality along with the number of apartments.
Sort records by the apartments count in descending order.


SQL QUERY FOR ABOVE STATEMENT:

select A.nationality, count(*)
from (select distinct host_id,nationality,age from airbnb_hosts) as A 
join airbnb_units AS B
on A.host_id=B.host_id 
where A.age<30 and B.unit_type='Apartment' 
group by A.nationality
