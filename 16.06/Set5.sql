
--Set 5

--1. (SELECT/FROM Subquery) Add a column to the output that displays the total salary for each department when retrieving employee details.
select e.*,(select sum(salary) from employees group by department_id) as total_sal from employee_details e;
--2. (SELECT/FROM Subquery) Add a column to the output that shows the count of employees in each department when retrieving department details.
select d.*,(select count(employee_id) from employees group by department_Id) from departments d;
--3. (SELECT/FROM Subquery) Add a column to the output that shows the highest salary in each department when retrieving employee details.
--4. (SELECT/FROM Subquery) Add a column to the output that displays the total number of subordinates for each manager when retrieving manager details.
--5. (SELECT/FROM Subquery) Add a column to the output that shows the average salary for each job title when retrieving employee details.
