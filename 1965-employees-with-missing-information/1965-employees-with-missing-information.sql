# Write your MySQL query statement below
SELECT employee_id
FROM (SELECT *
    FROM Employees AS e
    LEFT JOIN
    Salaries AS s
    USING(employee_id)
    UNION
    SELECT *
    FROM Employees AS e
    RIGHT JOIN
    Salaries AS s
    USING(employee_id)
    ) t
WHERE name IS NULL
OR salary IS NULL
ORDER BY employee_id
;