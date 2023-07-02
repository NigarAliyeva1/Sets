--Set 2
--1. **DDL Operation (ALTER)**Write a SQL statement to add a column 'middle_name' to the 'employees' table.
alter table employees add middle_name varchar2(100);
--2. **DML Operation (UPDATE)**Write a SQL statement to increase the salary of all employees by 10%.
update employees 
set salary=salary*1.1;
commit;
--3. **SELECT Statement with WHERE clause**Write a SQL statement to select all employees who have a salary greater than $5000.
select * from employees where salary>5000;
--4. **Single Function (Number)**Write a SQL statement to round the salary of all employees to the nearest whole number.
select round(salary) from employees;
--5. **Conversion Function**Write a SQL statement to convert the 'hire_date' of all employees to the format 'YYYY-MM-DD'.
select to_char(hire_date,'YYYY-MM-DD') from employees;
