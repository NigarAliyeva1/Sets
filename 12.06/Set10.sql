--Set 9

--1. **DDL operations**: Drop the "projects" table.
drop table projects;
--2. **Single Function (Number)**: Display the commission earned by each employee in the 
--"employees" table, assuming their commission_pct represents the portion of their salary they receive as a commission.
select first_name||' '||last_name as full_name,salary,commission_pct,salary-salary*commission_pct as commission from employees;
--3. **Subqueries**: Write a query to find all employees whose manager earns more than the average salary of all managers in the "employees" table.
select e.* from employees managers join employees e on  e.manager_id=managers.employee_id where managers.salary
>(select avg(managers.salary) from employees managers join employees e on  e.manager_id=managers.employee_id);
--4. **Set Operators**: Use the INTERSECT operator to find all department_ids that are present in both the "employees" and "departments" tables.
select department_id from employees
intersect
select department_id from departments;
--5. **Joins**: Write a query that joins the "employees" table and the "departments" table and
--displays the employee's first name, last name, and department name, only for those departments that have more than 50 employees.
select e.first_name, e.last_name,d.department_name from employees e join departments d on e.department_id=d.department_id
group by e.first_name, e.last_name,d.department_name
having count(*)>50;
