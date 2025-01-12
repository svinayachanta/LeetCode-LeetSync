select p.product_id, COALESCE(ROUND(SUM(u.units * p.price * 1.0)/SUM(u.units * 1.0),2), 0) as average_price
from prices p left join unitssold u 
on p.product_id = u.product_id and u.purchase_date >= p.start_date and u.purchase_date <= p.end_date
group by p.product_id