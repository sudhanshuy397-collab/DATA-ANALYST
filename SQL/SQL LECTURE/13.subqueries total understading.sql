-- SUBQUERIES COMPLETE

-- 1. WHERE CLAUSE

-- 1 SAL> AVG SAL;

select avg(salary) over() from employee_salary;

select first_name,salary ,
 (SELECT AVG(salary) FROM employee_salary) AS overall_avg
from employee_salary 
where salary> (select avg(salary)  from employee_salary);

-- 2.employee who work in same department as ron

select * 
from employee_salary;
select * 
from employee_demographics;
select *
from parks_departments;


select first_name 
from employee_salary as e
where e.dept_id in (select p.department_id
                         from parks_departments as p
                         where p.department_id=1);
                         
                         
-- 3.Find employees whose salary is greater than the average salary of their own department. 
select * 
from employee_salary;
select first_name
from employee_salary
where salary>(select dept_id,avg(salary)
                from employee_salary
                group by dept_id);
                
select first_name
from employee_salary as e
where salary>(select avg(salary) 
                from employee_salary
                where dept_id=e.dept_id
                );



-- selct selct

SELECT dept_id, avg_salary
FROM (
    SELECT dept_id, AVG(salary) AS avg_salary
    FROM employee_salary
    GROUP BY dept_id
) AS t;




                