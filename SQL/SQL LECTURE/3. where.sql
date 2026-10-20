--- WHERE Clause

select * 
from employee_demographics
where first_name = 'ron';
select * 
from employee_demographics
where gender = 'male' ;
select * 
from employee_demographics
where birth_date < '1982-06-12'

-- like statement
select * 
from employee_demographics
where first_name like 'r%';
select * 
from employee_demographics
where first_name like 'r%';
