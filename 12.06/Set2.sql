--Set 2
--1. **Conversion Functions**: Show the job_id in the "jobs" table in all uppercase.
select upper(job_id) from jobs;
--2. **Subqueries**: Find all employees in the "employees" table whose salary is above the average salary of their respective departments.
select first_name,last_name from employees
where salary>(select avg(salary) from employees);
--3. **Set Operators**: Use the UNION operator to create a list of all unique job_ids from both the "employees" and "job_history" tables.
select job_id from employees
union
select job_id from job_history;
--4. **DML operations (DELETE)**: Delete all records from the "employees_backup" table where the salary is below 3000.
delete employees_backup where salary>3000;
commit;
--5. **DDL operations**: Add a new column to the "employees_backup" table called "performance_score" of type INTEGER.
alter table employees_backup add performance_score INTEGER;
