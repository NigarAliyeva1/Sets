--Set7
--1. **SELECT with JOIN and ON clause**
--Write a SQL statement to display the employee's full name, department name, and location id.
select e.first_name||' '||e.last_name,d.department_name,d.location_id from employees e
join departments d on e.department_id=d.department_id;
--2. **SELECT with WHERE and LIKE clause**
--Write a SQL statement to find all employees whose first name starts with 'A'.
select * from employees where first_name like 'A%';
--3. **SELECT with WHERE and IN clause**
--Write a SQL statement to find all employees who work in department 10, 20 or 30.
select * from employees where department_id in (10,20,30);
--4. **SELECT with WHERE and BETWEEN clause**
--Write a SQL statement to find all employees whose salary is between $5000 and $10000.
select salary from employees where salary between 5000 and 10000;
--5. **SELECT with Aggregate Function and HAVING clause**
--Write a SQL statement to find the job titles with more than 5 employees.
select j.job_title 
from employees e join jobs j on e.job_id=j.job_id 
group by j.job_title 
having count(*)>5;
