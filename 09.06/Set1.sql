--Set1
--1. **Create a table**: Create a table named 'Employee_Details' with columns 'ID' (number type), 'Name' (varchar type), 'DOB' (date type), and 'Department_ID' (number type).
create table Employee_Details (
ID number,
Name varchar2(100),
DOB date,
Department_ID number);
--2. **Insert operation**: Insert a row into the 'Employees' table where first_name is 'John', last_name is 'Doe', email is '[jdoe@mail.com](mailto:jdoe@mail.com)', and hire_date is '15-JAN-2022'.
insert into Employees(first_name,last_name,email,hire_date) 
values('John','Doe','jdoe@mail.com',TO_DATE('15-JAN-2022', 'dd-MM-yyyy'));
--3. **Select with condition**: Write a SELECT statement to get the details of all the employees who were hired after '01-JAN-2020'.
SELECT * from employees where hire_date>'01-JAN-2020';
--4. **Character Function**: Write a query using the INITCAP function to return all job titles from the 'Jobs' table with the first letter capitalized.
select initcap(job_title) from jobs;
--5. **Inner Join**: Write a query to join the 'Employees' and 'Departments' tables to get the department names for all employees.
select e.first_name, d.department_name from employees e 
join departments d on e.department_id=d.department_id;
