Find the base pay for Police Captains.
Output the employee name along with the corresponding base pay.

SQL QUERY FOR ABOVE STATEMENT :
select employeename, basepay 
from sf_public_salaries
WHERE jobtitle LIKE 'CAPTAIN%'
