--Set 3

--1. **SELECT statement**: Select the last_name, job_id, and department_id from the "employees" table where the last_name like 'S%'.
select last_name, job_id, department_id 
from employees 
where last_name like 'S%';
--2. **Single Function (Analytical)**: Use the RANK() function to display employees' salary ranking within their department.
select first_name,last_name,department_id,salary, 
rank() over (partition by department_id order by salary) as salary_rank
from employees;
--3. **Aggregate Functions**: Find the highest, lowest, and average number of employees in each job from the "employees" table.
--(suali tam anlamadim eger salary-ni nezerde tutursunuzsa)
select 
max(salary) as highest_salary,
min(salary) as lowest_salary,
avg(salary) as average_salary
from employees;
--4. **Joins**: Write a query that FULL OUTER JOINs the "employees" table with the "departments" table and 
--displays the employee's first name,last name, and department name.
select e.first_name,e.last_name,d.department_name 
from employees e full join departments d 
on e.department_id=d.department_id; 
--5. **Subqueries**: Write a query that selects all employees in the "employees" table who work in a department with more than 80 employees.
select * from employees
where department_id in
(select department_id from employees 
group by department_id 
having count(*)>80);
