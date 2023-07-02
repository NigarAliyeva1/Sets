--Set8
--1. **SELECT with multiple JOINS**
--Write a SQL statement to display the employee's name, their manager's name and the department name.
select e.first_name||' '||e.last_name,emp.first_name||' '||emp.last_name as manager_name, d.department_name 
from employees e 
join employees emp on e.manager_id=emp.employee_id 
join departments d on e.department_id=d.department_id;
--2. **SELECT with WHERE and OR clause**
--Write a SQL statement to select all employees who are either 'IT_PROG' or 'SA_REP'.
select e.* ,j.job_id 
from employees e join jobs j on e.job_id=j.job_id 
where j.job_id = 'IT_PROG' or j.job_id = 'SA_REP';
--3. **SELECT with Aggregate Function and GROUP BY clause**
--Write a SQL statement to find the average salary for each job title.
select j.job_title,avg(e.salary) as "Average Salary"
from employees e join jobs j on e.job_id=j.job_id 
group by j.job_title;
--4. **SELECT with Subquery in WHERE clause**
--Write a SQL statement to select all employees who earn more than the average salary.
select * from employees where salary>(select avg(salary) from employees);
--5. **SELECT with UNION clause**
--Write a SQL statement to combine the list of all department IDs in 'employees' and 'departments' table.
select department_id from employees
union
select department_id from departments;
