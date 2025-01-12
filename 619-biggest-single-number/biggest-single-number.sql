with cte as (
    select num, count(num) as cnt
    from mynumbers
    group by num
    having count(num) = 1
)

select max(num) as num
from cte