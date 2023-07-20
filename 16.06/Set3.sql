--Set 3

--1. (WHERE/HAVING Subquery) Identify departments where the average salary is above 5000.
select department_id from employees where salary>(select avg(salary) from employees);
--2. (WHERE/HAVING Subquery) Discover departments where the maximum salary is greater than the average salary of all departments.
select department_id from employees where salary>(select avg(salary) from employees) order by salary desc fetch first 1 row only;
--3. (WHERE/HAVING Subquery) Find departments where the average tenure is above 5 years.

--4. (WHERE/HAVING Subquery) Find departments where the number of subordinates per manager is above the company average.

--5. (WHERE/HAVING Subquery) Find job titles where the maximum salary is higher than the average salary of all job titles.