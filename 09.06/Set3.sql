--Set3
--1
create table Project_Details(
Project_ID number,
Project_Name varchar2(100),
Start_Date date,
End_Date date,
Manager_ID number
);
--2
delete from employees 
where first_name='John' and last_name='Doe';
--3
select * from employees order by hire_date desc;
--4
select round(salary,-2) from employees group by salary;
--5
select e.first_name, d.department_name from employees e 
right join departments d on e.department_id=d.department_id;
