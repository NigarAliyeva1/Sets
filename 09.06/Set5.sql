--Set5
--1. **Drop a table**: Drop the 'Project_Details' table.
drop table Project_Details;
--2. **Insert operation with select**: Insert into 'Employee_Details' table all the employees from 'Employees' table where the hire date is after '01-JAN-2021'.
insert into Employee_Details(id,name,dob,department_id,salary)
select employee_id,first_name,hire_date,department_id,salary
from employees where hire_date>'01-JAN-2021';
commit;
--3. **Select with group by**: Write a SELECT statement to get the job_id and the number of employees working in each job_id from the 'Employees' table.
select job_id, count(employee_id) from employees 
group by job_id;
--4. **Analytical Function**: Write a query using the RANK function to return the salaries and rank of each employee based on their salary within their department.
--help
--5. **Set operator**: Write a query using UNION to return the job_ids from both the 'Jobs' and 'Job_History' tables.
select job_id from jobs
union
select job_id from job_history;
