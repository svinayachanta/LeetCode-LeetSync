select
s.user_id, round(avg(case when c.action ='confirmed' then 1.0 else 0.0 end),2) as confirmation_rate
from signups s 
left join confirmations c
on s.user_id = c.user_id
group by s.user_id