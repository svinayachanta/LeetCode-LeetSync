select email from (
select email, row_number() over(partition by email order by email) as rn
from person) as sq
where rn=2