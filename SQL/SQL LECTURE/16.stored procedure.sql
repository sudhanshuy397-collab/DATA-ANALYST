-- stored procedure


create procedure large_sal ()
select *
from employee_salary
where salary>=50000
;

call large_sal;