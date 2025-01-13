select p.product_name, sum(o.unit) as unit
from orders o inner join products p
on o.product_id = p.product_id
where order_date LIKE '2020-02%'
group by p.product_name
having sum(o.unit) >= 100