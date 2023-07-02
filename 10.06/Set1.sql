--Set1
--1. **DDL Operation (CREATE)**Write a SQL statement to create a new table named 'new_employees' that has the same structure as the 'employees' table.
create  table new_employees as select * from employees where 1=2;
--2. **DML Operation (INSERT)**Write a SQL statement to insert a new record into the 'employees' table. Use your own values for the data.
insert into employees(
employee_id,
first_name,
last_name,
email,
phone_number,
hire_date,
job_id,
salary,
commission_pct,
manager_id,
department_id) values(1,'Anna','John','PERALTA','515.123.4567','17-JUN-07','AD_PRES',9999,0.2,145,60);
commit;
--3. **SELECT Statement**Write a SQL statement to select all employees' first and last names and their department ids from the 'employees' table.
select first_name,last_name,department_id from employees;
--4. **Single Function (Character)**Write a SQL statement to display the first name of all employees in lower case.
select lower(first_name) from employees;
--5. **Aggregate Function**Write a SQL statement to find the average salary in the 'employees' table.
select avg(salary) from employees;
