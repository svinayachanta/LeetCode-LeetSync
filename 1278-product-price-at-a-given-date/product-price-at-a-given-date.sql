with cte as (
SELECT product_id , MAX(CASE WHEN change_date <= '2019-08-16' THEN change_date END) AS dt
FROM Products
GROUP BY product_id) 
SELECT c.product_id , COALESCE(p.new_price , 10) AS price 
FROM cte c LEFT JOIN products p
ON p.product_id = c.product_id AND c.dt = p.change_date;