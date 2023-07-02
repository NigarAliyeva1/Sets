--Set9
--1. **SELECT with JOIN and USING clause**
--Write a SQL statement to display the employee's full name and department name using the 'department_id' field.
select e.first_name||' '||e.last_name as "Full Name", d.department_name from employees e join departments d using (department_id);
--2. **SELECT with CASE statement**
--Write a SQL statement to categorize employees' salaries into 'Low', 'Medium' and 'High'.
select first_name||' '||last_name as "Full Name",salary,case
when salary <5000 then 'Low'
when salary>=5000 and salary<10000 then 'Medium'
else 'High' 
end as "Salary Catagory"
from employees;
--3. **SELECT with Subquery in SELECT clause**
--Write a SQL statement to display the department name and the highest salary in each department.
select department_name from departments group by department_name;
select  d.department_name,(select max(e.salary) from employees e where e.department_id=d.department_id) as "Max Salary" from departments d;
--4. **SELECT with WHERE and NULL clause**
--Write a SQL statement to find all employees with no commission_pct.
select * from employees where commission_pct is null;
--5. **SELECT with GROUP BY and ROLLUP clause**
--Write a SQL statement to show the total salary, grouped by department and job title.
select j.job_title, d.department_name,Sum(e.salary) as "Total Salary" from employees e 
join departments d on e.department_id = d.department_id
join jobs j on e.job_id=j.job_id
group by rollup(d.department_name,j.job_title)
order by "Total Salary";
