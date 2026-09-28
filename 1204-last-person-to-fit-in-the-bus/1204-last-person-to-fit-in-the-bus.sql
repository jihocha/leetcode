# Write your MySQL query statement below
SELECT person_name
FROM Queue
ORDER BY
    CASE WHEN (1000 - SUM(weight) OVER (ORDER BY turn)) >= 0 THEN 0 ELSE 1 END,
    (1000 - SUM(weight) OVER (ORDER BY turn))
LIMIT 0, 1
;