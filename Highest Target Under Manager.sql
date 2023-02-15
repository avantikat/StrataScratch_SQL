Find the lowest target achieved by the employee or employees who works under the manager id 13.
Output the first name of the employee and target achieved. The solution should show the lowest target achieved 
under manager_id=13 and which employee(s) achieved it.

solution
select first_name, target 
from salesforce_employees
where manager_id='13'
AND target= (select max(target)from salesforce_employees
where manager_id= 13);
