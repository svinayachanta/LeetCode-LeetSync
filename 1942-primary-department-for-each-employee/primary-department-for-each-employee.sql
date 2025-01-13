WITH cte AS (
    SELECT employee_id, department_id, primary_flag, 
           COUNT(department_id) OVER (PARTITION BY employee_id) AS cnt
    FROM employee)
SELECT employee_id, department_id
FROM cte
WHERE primary_flag = 'Y' OR cnt = 1;