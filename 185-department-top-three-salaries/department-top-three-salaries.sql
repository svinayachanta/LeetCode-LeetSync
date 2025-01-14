with cte as (
select e.name as ename, e.salary as esal, d.name as dname,  dense_rank() over(partition by departmentid order by salary desc) as rank
from employee e 
left join department d
on e.departmentid = d.id)

select dname as Department, ename as Employee, esal as Salary
from cte
where rank <= 3