with cte as (
select class, count(distinct student) as cnt
from courses
group by class)

select class
from cte 
where cnt >= 5