--Set 7

--1. **DML operations (DELETE)**: Delete all employees in the "employees_backup" table who were hired in the second half of the year (July to December).
select * from employees 
where extract(month from hire_date)<7
and extract(month from hire_date)>=1;
--2. **Set Operators**: Use the UNION ALL operator to list all country_id values from both the "locations" and "countries" tables.
select country_id from locations
union all
select country_id from countries;
--3. **Single Function (Analytical)**: Display the dense rank of employees based on salary within their department in the "employees" table.
select e.*, rank() over (partition by department_id order by salary) as rank_salary from employees e;
--4. **Conversion Functions**: Display the length of service for each employee in the "employees" table in years and months.
select 
first_name,
last_name,
(extract(year from sysdate)-extract(year from hire_date))
||' year and '||
ABS(extract(month from sysdate)-extract(month from hire_date))
||' month' as service_length
from employees ;
--5. **Subqueries**: Find the job title of the employee who earns the second highest salary in the "employees" table.
select e.*,j.job_title 
from employees e join jobs j
on e.job_id=j.job_id
where e.salary=(select salary from employees order by salary desc offset 1 row fetch first 1 rows only);
--offseti yeni oyrendim
