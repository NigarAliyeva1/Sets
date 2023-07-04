--Set 4

--1. **DDL operations**: Alter the "employees_backup" table by dropping the "performance_score" column.
alter table employees_backup 
drop column performance_score;
--2. **DML operations (INSERT)**: Insert a new record into the "employees_backup" table. Use your own discretion for the values.
insert into employees_backup(
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
department_id,
middle_name)
values(12,'Rick','Patrick','rick@gmail.com','44444444','12-JAN-1990','AD_PRES',70000,0.25,145,80,'Bruno');
commit;
--3. **Single Function (Number)**: Use the ROUND function to round the salary of all employees to the nearest hundred in the "employees" table.
select round(salary,-2) from employees;
--4. **Aggregate Functions**: Find the department with the highest number of employees in the "employees" table.
select count(employee_id),department_id 
from employees 
group by department_id;
--5. **Conversion Functions**: Display the hire_date of all employees in the "employees" table in the 
--format 'YYYY-Q' where Q represents the quarter of the year.
select e.*,to_char(hire_date,'YYYY-Q') as year_quarter  
from employees e;
