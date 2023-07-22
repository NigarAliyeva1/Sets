--Set 4

--1. (IN Subquery) Generate a list of department IDs where the number of employees is more than 10, and then
--find all employees working in these departments.
select * from employees 
where department_id in (select department_id from employees  group by department_id having count(*)>10);
--2. (IN Subquery) Make a list of managers who manage more than 5 employees, and then find all employees under these managers.
select * from employees where manager_Id in (select manager_id from employees group by manager_id having count(*)>5);
--3. (IN Subquery) Generate a list of departments that have more than two job categories, and then find all employees working in these departments.
select * from employees where department_id in 
(select department_id from employees where job_id in 
(select job_id from employees group by job_id having count(*)>2))
order by department_id;
--4. (IN Subquery) Generate a list of job titles which have more than 10 holders, and find all employees holding these job titles.
select * from employees where job_id in 
(select job_id from employees group by job_id having count(*)>10);
--5. (IN Subquery) Make a list of job titles which have vacancies, and then find all departments that have these vacancies.
--help
