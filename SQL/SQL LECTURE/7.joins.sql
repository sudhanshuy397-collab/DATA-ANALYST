select *
from employee_demographics;

select *
from employee_salary;

select *
from employee_demographics
inner join employee_salary
on employee_demographics.employee_id=employee_salary.employee_id
;
select *
from employee_demographics as dem
inner join employee_salary as sal
on dem.employee_id=sal.employee_id;

select dem.employee_id
from employee_demographics as dem
inner join employee_salary as sal
on dem.employee_id=sal.employee_id

elect *
from employee_demographics
inner join employee_salary
on employee_demographics.employee_id=employee_salary.employee_id
;

select dem.employee_id,dem.first_name,occupation
from employee_demographics as dem
inner join employee_salary as sal
on dem.employee_id=sal.employee_id;

--outer join;

select *
from employee_demographics as dem
left join employee_salary as sal
on dem.employee_id=sal.employee_id;

select *
from employee_demographics as dem  
right join employee_salary as sal
on dem.employee_id=sal.employee_id;

select emp1.first_name,emp2.first_name
,emp1.employee_id,emp2.employee_id
from employee_demographics as emp1
join employee_demographics as emp2
on emp1.employee_id + 1 =emp2.employee_id;

select *
from employee_demographics;

select *
from employee_salary;

select *
from parks_departments;

select * 
from employee_demographics as d
inner join employee_salary as s
on d.employee_id=s.employee_id
join parks_departments as p
on p.department_id=s.dept_id;

