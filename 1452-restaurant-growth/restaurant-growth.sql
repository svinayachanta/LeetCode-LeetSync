with cte as (
    select 
    visited_on, 
    sum(amount) as amount, 
    avg(amount*1.0) as average_amount
    from customer
    group by visited_on),
cte1 as (
    select 
    visited_on, 
    sum(amount) over (order by visited_on rows between 6 preceding and current row) as amount,
    round(avg(amount*1.0) over (order by visited_on rows between 6 preceding and current row), 2) as average_amount,
    row_number() over (order by visited_on) as rn
    from cte
)
select visited_on, amount, average_amount
from cte1
where rn > 6

