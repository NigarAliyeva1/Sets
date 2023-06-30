--Set1
--1
create table Employee_Details (
ID number,
Name varchar2(100),
DOB date,
Department_ID number);
--2
insert into Employees(first_name,last_name,email,hire_date) 
values('John','Doe','jdoe@mail.com',TO_DATE('15-JAN-2022', 'dd-MM-yyyy'));
--3
SELECT * from employees where hire_date>'01-JAN-2020';
--4
select initcap(job_title) from jobs;
--5
select e.first_name, d.department_name from employees e 
join departments d on e.department_id=d.department_id;
