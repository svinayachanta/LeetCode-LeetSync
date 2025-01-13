with cte as (
    select requester_id, accepter_id
    from requestaccepted
    union all
    select accepter_id, requester_id
    from requestaccepted
)

select top 1 requester_id as id, count(requester_id) as num
from cte
group by requester_id
order by count(requester_id) desc