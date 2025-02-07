select distinct sell_date, count(distinct product) as num_sold, string_agg(product,',') as products
from (select distinct *
    from Activities) t
group by sell_date 
order by sell_date