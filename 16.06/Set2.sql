--Set 2

--1. (Correlated Subquery) Calculate the total number of employees and the total salary expenditure of the company.
select (select count(employee_id) from employees) as total_number ,(select sum(salary) from employees) as total_salary from dual;
--2. (Correlated Subquery) Compute the maximum, minimum, and average salary across all departments.
select department_id, max(salary),min(salary),avg(salary) from employees group by department_id;
--3. (Correlated Subquery) Calculate the total number of departments and the average number of employees per department.
--help
select 
(select count(department_id) from employees) as n_ , 
(select avg(employee_id),department_id from employees group by department_id) as m_ from employees;
--4. (Correlated Subquery) Identify the total salary expenditure for each job title across the company.
select sum(salary),job_id from employees group by job_id;
--5. (Correlated Subquery) Calculate the number of managers and the total number of their subordinates across the company.
select count(employee_id), (select count(e.employee_id) from employees e join employees emp on e.manager_id=emp.employee_id
group by emp.employee_id) from employees;
--help
