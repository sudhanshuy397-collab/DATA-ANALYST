# Write your MySQL query statement below
with t1 as
(
    select student,class, count(student) as count
    from courses
    group by class
)
select distinct t1.class
from courses
join t1
on t1.student=courses.student
where count>=5;
