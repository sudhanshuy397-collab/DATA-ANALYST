-- window function

select gender , avg(salary)
from employee_demographics as d
join employee_salary as s
on d.employee_id=s.employee_id
group by gender;

select gender , avg(salary) over()
from employee_demographics as d
join employee_salary as s
on d.employee_id=s.employee_id
;

select d.first_name ,gender, avg(salary) over(partition by gender)
from employee_demographics as d
join employee_salary as s
on d.employee_id=s.employee_id
;

select gender , d.first_name, salary,
avg(salary) 
over(partition by gender order by d.employee_id) 
as avg_rolling_total,
sum(salary) 
over(partition by gender order by d.employee_id) 
as sum_rolling_total
from employee_demographics as d
join employee_salary as s
on d.employee_id=s.employee_id
;

select d.first_name, gender ,
 row_number() over(partition by gender order by d.first_name)
from employee_demographics as d
join employee_salary as s
on d.employee_id=s.employee_id
;



