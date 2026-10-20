-- temporaray table
use parks_and_recreation;
create temporary table temp_table
( first_name varchar(50),
   last_name varchar(50),
   favorite_movie varchar (100)
   )
   select *
   from temp_table;
   insert into temp_table
   values('alex','sharma','avengers');
   select *
   from temp_table;
   
   select *
   from employee_salary;
   
   create temporary table salary_over_50k
   select *
   from employee_salary
   where salary>50000;
   
   select *
   from salary_over_50k;
   
   
   USE parks_and_recreation;

CREATE TEMPORARY TABLE temp_table (
   first_name VARCHAR(50),
   last_name VARCHAR(50),
   favorite_movie VARCHAR(100)
);

INSERT INTO temp_table VALUES ('alex','sharma','avengers');

SELECT * FROM temp_table;

   
   