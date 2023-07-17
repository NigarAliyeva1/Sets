--Set 1

--1. (Scalar Subquery) Find employees who have a salary above the average salary of all employees.
select * from employees where salary>(select avg(salary) from employees);
--2. (Scalar Subquery) Identify the employees who work in a department with more than 10 employees.
select * from employees where department_id in 
(select department_id from employees group by department_id having count(*)>10);
--3. (Scalar Subquery) Find employees who have been with the company longer than the average tenure.
select * from employees where extract(year from sysdate)- extract(year from hire_date)> 
(select avg(extract(year from sysdate)- extract(year from hire_date)) as avg_ from employees);
--4. (Scalar Subquery) Discover employees who have a commission percentage above the average.
select * from employees where commission_pct> 
(select avg(commission_pct) from employees);
--5. (Scalar Subquery) Determine employees whose salary is higher than the average salary for their job title.
select * from employees where salary> 
(select avg(salary) from employees);
