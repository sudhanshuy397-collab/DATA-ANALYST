select * 
from employee_demographics;

select * from
parks_departments;
select * from
employee_salary;


select * 
from employee_demographics
where employee_id in
       (select employee_id
        from employee_salary
        where salary> 50000 )
;

select first_name , salary ,
 (select avg(salary) from employee_salary )
from employee_salary;

select * 
from employee_demographics
where age> 30 ;

select gender , avg(age) as av
from employee_demographics
group by gender;

select   max(`avg(age)`), max(`avg(age)`)
from (select gender , avg(age) 
from employee_demographics
group by gender ) as tab 
; 

