
--Set 5

--1. **Set Operators**: Use the MINUS operator to display all employees in the "employees" 
--table who have never been a manager (based on the manager_id column).
select employee_id from employees
minus
select manager_id from employees;
--2. **Joins**: Write a query that INNER JOINs the "employees" table with the "jobs" table and displays 
--the employee's first name, last name, and job title.
select e.first_name,e.last_name,j.job_title from employees e join jobs j on e.job_id=j.job_id;
--3. **SELECT statement**: Select the first_name, last_name, salary, and department_id from the 
--"employees" table where the salary is not in the top 5 salaries.
select first_name, last_name, salary, department_id from employees where salary not in 
(select salary from employees order by salary desc fetch first 5 rows only);
--4. **DDL operations**: Create a new table called "employee_projects" that includes the 
--following columns: "project_id" (integer), "employee_id" (integer), "start_date" (date), "end_date" (date), "role" (varchar).
create table employee_projects(
project_id number,
employee_id number,
start_date date,
end_date date,
role varchar2(100)
);
--5. **DML operations (UPDATE)**: In the "employees_backup" table, set the commission_pct to 0 for all employees who don't have a commission_pct.
update employees_backup
set commission_pct=0
where commission_pct is null;
commit;
