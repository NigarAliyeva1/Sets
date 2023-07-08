--Set 10

--1. **DML operations (UPDATE)**: Update the "employees_backup" table by giving a 10% salary increase 
--to those employees whose job_id is 'SA_REP' and who were hired after the year 2005.
update employees_backup 
set salary=salary*1.1
where job_id='SA_REP'
AND extract(year from hire_date)>2005;
--2. **Aggregate Functions**: Find the median salary for the 'IT_PROG' job in the "employees" table.
--help
--3. **Single Function (Date)**: List the employees in the "employees" table who have been hired in the last 365 days.
select * from employees where extract(year from sysdate)-extract(year from hire_date)<1;
--4. **Conversion Functions**: Convert the hire_date in the "employees" table to 'Day, DD-Month-YYYY' format.
select to_char(hire_date,'Day, DD-Month-YYYY') from employees;
--5. **SELECT statement**: Display the employees' last names and the length of the names from the "employees" table. 
--Order the result by the length of the names in descending order.
select last_name,length(last_name) as length_name  from employees order by length_name desc;
