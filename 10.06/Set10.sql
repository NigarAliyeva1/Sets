--Set10
--1. **SELECT with Self JOIN**
--Write a SQL statement to find pairs of employees who have the same job title.
select * from employees;
--Help
--2. **SELECT with Aggregate Function and WHERE clause**
--Write a SQL statement to find the total salary of employees whose department id is 30.
select sum(salary) as "Total Salary" from employees where department_id=30;
--3. **SELECT with UNION ALL clause**
--Write a SQL statement to combine the list of all department IDs in 'employees' and 'departments' table including duplicates.
select department_id from employees
union all
select department_id from departments;
--4. **SELECT with NOT IN clause**
--Write a SQL statement to select all employees who do not work in department 30, 50 or 80.
select * from employees where department_id not in(30,50,80);
--5. **SELECT with Subquery in FROM clause**
--Write a SQL statement to select the highest paid employee from each department.
select d.department_id,(select max(e.salary) from employees e where e.department_id=d.department_id) as "Max Salary" from departments d
order by department_id;
