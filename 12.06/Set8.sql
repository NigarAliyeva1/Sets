--Set 8

--1. **SELECT statement**: Select all fields from the "employees" table for employees whose first name contains the letter 'e' at least twice.
select * from employees where first_name like '%e%e%';
--2. **Joins**: Write a query that RIGHT JOINs the "employees" table with the 
--"departments" table and displays the employee's first name, last name, and department name.
select e.first_name, e.last_name, d.department_name
from employees e 
right join departments d 
on e.department_id=d.department_id;
--3. **DDL operations**: Rename the "employee_projects" table to "projects".
alter table employee_projects rename to projects;
--4. **Aggregate Functions**: For each job_id in the "employees" table, find the difference between the maximum and minimum salaries.
select job_id,Max(salary)-Min(salary) as difference from employees group by job_id;
--5. **DML operations (INSERT)**: Insert a new record into the "projects" table. Use your own discretion for the values.
insert into projects(project_id,
employee_id,
start_date,
end_date,
role,
country_id)
values(1,1,'10-JAN-2003','31-OCT-2015','New',12);
commit;
