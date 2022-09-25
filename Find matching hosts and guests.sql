Find matching hosts and guests pairs in a way that they are both of the same gender and nationality.
Output the host id and the guest id of matched pair.

SQL QUERY FOR ABOVE STATEMENT:
select distinct(h.host_id), g.guest_id
from airbnb_hosts AS h JOIN airbnb_guests AS g
ON h.nationality = g.nationality
AND h.gender = g.gender;
