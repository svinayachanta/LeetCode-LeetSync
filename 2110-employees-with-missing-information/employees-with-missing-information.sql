select coalesce(e.employee_id, s.employee_id) as employee_id
from employees e
full outer join salaries s on e.employee_id = s.employee_id
where e.name is null or s.salary is null
order by employee_id