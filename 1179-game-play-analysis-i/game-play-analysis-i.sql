with cte as (
    select *, row_number() over(partition by player_id order by event_date) as rn
    from activity
)

select player_id, event_date as first_login from cte where rn = 1