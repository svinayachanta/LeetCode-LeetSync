select users.name, coalesce(sum(distance),0) as travelled_distance
from users
left join rides on users.id = rides.user_id
group by users.name, users.id
order by sum(distance) desc, users.name