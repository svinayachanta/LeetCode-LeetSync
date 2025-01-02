with cte as(
select *, lag(temperature, 1) over(order by recordDate) as ptemp, lag(recordDate, 1) over(order by recordDate) as pdate
from weather)

select id from cte
where temperature > ptemp and datediff(day, pdate, recordDate) = 1