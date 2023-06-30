--Set4
--1
alter table Project_Details add Project_Status varchar2(100);
--2
update Project_Details 
set Project_Status='Completed' 
where end_date<sysdate;
commit;
--3
select * from employees where salary>(
select avg(salary) from employees);
--4
select to_char(hire_date,'DD-MON-YYYY') from employees;
--5
select e.first_name,d.department_name from employees e 
full join departments d on e.department_id=d.department_id;
