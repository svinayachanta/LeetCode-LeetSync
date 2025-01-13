SELECT * FROM (
    SELECT TOP 1 u.name AS results
    FROM movierating mr
    LEFT JOIN users u ON mr.user_id = u.user_id
    GROUP BY u.name
    ORDER BY COUNT(mr.movie_id) DESC, u.name
) a

UNION ALL

SELECT * FROM (
    SELECT TOP 1 m.title AS results
    FROM movierating mr
    LEFT JOIN movies m ON mr.movie_id = m.movie_id
    WHERE mr.created_at LIKE '2020-02%'
    GROUP BY m.title
    ORDER BY AVG(CAST(mr.rating AS FLOAT)) DESC, m.title
) b;
