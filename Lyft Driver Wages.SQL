Find all Lyft drivers who earn either equal to or less than 30k USD or equal to or more than 70k USD.
Output all details related to retrieved records.



SQL QUERY FOR ABOVE STATMENT:
select * from lyft_drivers
WHERE yearly_salary <=30000 OR yearly_salary >=70000;
