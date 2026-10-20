--- CTE ;
select *
from employee_salary;

WITH avg_sal AS
(SELECT AVG(salary) as avg_salary
 FROM employee_salary) 
select first_name,salary , avg_salary
 from employee_salary , avg_sal
where salary> avg_salary;

with cte_eg as
(select avg(salary) as avg_sal , 
max(salary) as max_sal
from employee_salary)
select dept_id,  avg(avg_sal)
from employee_salary,cte_eg
group by dept_id;

with cte_eg as
(select avg(salary) as avg_sal , 
max(salary) as max_sal
from employee_salary)

select  avg(avg_sal)
from cte_eg
;

with cte_eg as
(select avg(salary) as avg_sal , 
max(salary) as max_sal
from employee_salary as es
join employee_demographics as ed
on es.employee_id=ed.employee_id
group by gender )
select  avg(avg_sal)
from cte_eg
;
select *
from employee_demographics;
select *
from employee_salary;


with 
cte_eg1 as
 (select  concat(first_name,' ',last_name) as full_name ,employee_id
 from employee_demographics 
 where age>=30),
 cte_eg2 as 
 (select salary , employee_id
 from employee_salary
 where salary>50000)
 
 select full_name, salary
 from cte_eg1
 join cte_eg2
 on cte_eg1.employee_id=cte_eg2.employee_id;
    
 
 
 
 
 
 
 
 
 
