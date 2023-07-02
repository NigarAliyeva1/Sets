--Set5
--1. **DDL Operation (ALTER TABLE MODIFY COLUMN)**Write a SQL statement to modify the data type of 'commission_pct' column in 'employees' table to NUMBER(3, 2).
alter table employees modify commission_pct NUMBER(3, 2);
--2. **DML Operation (UPDATE with WHERE)**Write a SQL statement to update the department id to 20 for all employees whose last name is 'King'.
update employees set department_id=20 where last_name='King';
commit;
--3. **Subquery in FROM clause**Write a SQL statement to find the maximum salary in each department.
select Max(salary),department_id from employees group by department_id order by department_id;
--4. **Set Operator (MINUS)**Write a SQL statement to find all department IDs that are in the 'departments' table but not in the 'employees' table.
select department_id from departments
minus
select department_id from employees;
--5. **Join (LEFT OUTER JOIN)**Write a SQL statement to display the department name for all employees, including those without a department.
select e.*,d.department_name from employees e left join departments d on e.department_id=d.department_id;
