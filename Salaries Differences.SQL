
Write a query that calculates the difference between the highest salaries found in the marketing and engineering departments.
Output just the absolute difference in salaries.



SQL QUERY FOR ABOVE STATEMENT:

SELECT
    ABS((SELECT MAX(salary)
    FROM db_employee emp
    JOIN db_dept dept ON emp.department_id= dept.id
    WHERE department='engineering')-
    (SELECT MAX(salary)
    FROM db_employee emp
    JOIN db_dept dept ON emp.department_id= dept.id
    WHERE department ='marketing')) AS salary_diffe;
