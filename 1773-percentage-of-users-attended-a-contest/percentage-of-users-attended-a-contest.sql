DECLARE @total_users_count INT;

-- Precompute the unique user count
SELECT @total_users_count = COUNT(DISTINCT user_id) FROM users;

-- Use the precomputed value in your query
SELECT 
    r.contest_id, 
    ROUND(COUNT(DISTINCT r.user_id) * 100.0 / @total_users_count, 2) AS percentage
FROM register r
GROUP BY r.contest_id
ORDER BY percentage DESC, contest_id ASC;
