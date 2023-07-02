--Set4
--1. **DDL Operation (CREATE INDEX)**Write a SQL statement to create an index on the salary column in the 'employees' table.
create index idx_salary on employees (salary);
--2. **DML Operation (INSERT with SELECT)**Write a SQL statement to insert into a new table 'high_salary_employees' all employees who have a salary greater than $10000.
create table high_salary_employees as select * from employees where salary>10000;
commit;
--3. **SELECT Statement with ORDER BY clause**Write a SQL statement to select all employees' first and last names and their salaries, sorted by salary in descending order.
select first_name,last_name,salary from employees order by salary desc;
--4. **Single Function (Date)**Write a SQL statement to calculate the number of years between the hire date and current date for all employees.
select extract(year from sysdate)-extract(year from hire_date) as calc from employees;
--5. **Aggregate Function with GROUP BY**Write a SQL statement to find the total salary paid for each department.
select Sum(salary),department_id from employees group by department_id order by department_id;
