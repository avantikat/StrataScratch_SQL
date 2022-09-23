Find the average total compensation based on employee titles and gender. Total compensation is calculated
by adding both the salary and bonus of each employee. However, not every employee receives a bonus so disregard employees 
without bonuses in your calculation. Employee can receive more than one bonus.
Output the employee title, gender (i.e., sex), along with the average total compensation.

SQL QUERY FOR ABOVE STATEMET:

select sf.employee_title, sf.sex, AVG(sf.salary+ bo.bonus) AS avg_tc
from sf_employee AS sf join
(select worker_ref_id, sum(bonus) as bonus
from sf_bonus GROUP BY worker_ref_id) AS bo
on sf.id = bo.worker_ref_id
group by 1,2;
