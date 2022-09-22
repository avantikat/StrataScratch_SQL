Find the titles of workers that earn the highest salary. Output the highest-paid title or multiple titles that share the highest salary.

SQL UQARY FOR ABOVE STAEMENT:

select (t.worker_title) from worker as w
join title AS t ON w.worker_id = t.worker_ref_id
where salary in (select MAX(salary) from worker);
