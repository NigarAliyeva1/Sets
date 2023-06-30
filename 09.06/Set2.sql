--Set2
--1
alter table Employee_Details add Salary number;
--2
update Employees set commission_pct=0.2 
where job_id='SA_REP';
--3
select AVG(salary) from employees;
--4
select sysdate,extract(year from sysdate)-extract(year from hire_date) as year 
from employees;
--5
select e.first_name, d.department_name from employees e 
left join departments d on e.department_id=d.department_id;
