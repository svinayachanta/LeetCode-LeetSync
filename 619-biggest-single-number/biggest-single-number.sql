with cte as (
    select num
    from mynumbers
    group by num
    having count(num) < 2
)

select top 1 coalesce(max(num), null) as num
from cte
