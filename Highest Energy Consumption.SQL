
Find the date with the highest total energy consumption from the Meta/Facebook data centers.
Output the date along with the total energy consumption across all data centers.

SQL QUERY FOR ABOVE STATEMENT:
with ln as  (select date,sum(consumption) as consumption from (
select date,consumption from fb_eu_energy as na
union
select date,consumption from fb_asia_energy as asia
union 
select date,consumption from fb_na_energy as na
) as Data
group by date
) 
select * from ln
where consumption=(select Max(consumption) from ln)
