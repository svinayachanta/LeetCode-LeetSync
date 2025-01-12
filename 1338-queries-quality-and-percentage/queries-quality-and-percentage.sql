SELECT 
query_name,
ROUND(SUM(rating*1.0/position) / COUNT(*),2) as quality,
ROUND(SUM(CASE WHEN rating<3 THEN 1 ELSE 0 END)*100.0 / COUNT(*),2) as poor_query_percentage
FROM queries
GROUP BY query_name