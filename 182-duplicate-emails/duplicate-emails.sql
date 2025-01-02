with cte as (
select email, row_number() over(partition by email order by email) as rn
from person)

select email
from cte
where rn = 2

