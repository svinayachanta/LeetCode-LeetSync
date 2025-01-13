with cte as (
select id, num, lead(id, 1) over(order by id) as next_id, lead(num, 1) over(order by id) as next_num, lead(id, 2) over(order by id) as next_next_id, lead(num, 2) over(order by id) as next_next_num
from logs)

select distinct num as ConsecutiveNums
from cte
where num = next_num and next_num = next_next_num and next_id = id + 1 and next_next_id = next_id + 1