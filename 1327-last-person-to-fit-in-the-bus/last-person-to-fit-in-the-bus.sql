with cte as (
select *, sum(weight) over(order by turn) as running_weight
from queue)

select top 1 person_name
from cte
where running_weight <= 1000
order by running_weight desc