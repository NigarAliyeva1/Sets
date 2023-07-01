--Set5
--1
drop table Project_Details;
--2
insert into Employee_Details(id,name,dob,department_id,salary)
select employee_id,first_name,hire_date,department_id,salary
from employees where hire_date>'01-JAN-2021';
commit;
--3
select job_id, count(employee_id) from employees 
group by job_id;
--4
--help
--5
select job_id from jobs
union
select job_id from job_history;
