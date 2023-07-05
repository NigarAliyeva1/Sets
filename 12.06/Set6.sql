--Set 6

--1. **Aggregate Functions**: Find the mode of the salary (most frequently occurring salary) in the "employees" table.
select count(salary),salary 
from employees 
group by salary;
--2. **Subqueries**: Display all employees who report to the manager who manages the most employees in the "employees" table.
select * from employees where manager_id= 
(select manager_id
from employees 
group by manager_id
order by count(*) desc
fetch first 1 rows only);
--3. **Single Function (Character)**: Use the CONCAT function to display each employee's full name (first name and last name) in the "employees" table.
select concat(first_name,last_name) as full_name from employees;
--4. **Joins**: Write a query to display the first_name, last_ name, and department_name of all employees
--who work in countries that have a country_name starting with 'U'.
select e.first_name,e.last_name, d.department_name from employees e 
join departments d on e.department_id=d.department_id
join locations l on d.location_id=l.location_id
join countries c on l.country_id=c.country_id
where c.country_name like 'U%';
--5. **DDL operations**: Add a "country_id" column to the "employee_projects" table.
alter table employee_projects add country_id number;
