--Set 3
--1. **DDL Operation (DROP)**Write a SQL statement to drop the 'new_employees' table.
drop table new_employees;
--2. **DML Operation (DELETE)**Write a SQL statement to delete all employees who are working in department id 10.
delete from employees where department_id=10;
commit;
--3. **Subquery**Write a SQL statement to find the names of all employees who have a higher salary than the average salary.
select first_name,last_name from employees
where salary>(select avg(salary) from employees);
--4. **Set Operator (UNION)**Write a SQL statement to display a list of all unique department IDs from both the 'employees' and 'departments' table.
select department_id from employees
union
select department_Id from departments;
--5. **Join (INNER JOIN)**Write a SQL statement to display the employee's full name and department name for all employees.
select first_name||' '||last_name as full_name, d.department_name from employees e
join departments d on e.department_id =d.department_id;
