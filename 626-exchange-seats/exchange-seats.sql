select id,
case 
    when id%2=1 then coalesce(lead(student) over(order by id), student)
    when id%2=0 then lag(student, 1) over(order by id) end as student
from seat
order by id