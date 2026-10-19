# Write your MySQL query statement below
WITH categories AS (
    SELECT 'Low Salary' AS cat
    UNION ALL SELECT 'Average Salary'
    UNION ALL SELECT 'High Salary'
)

SELECT c.cat AS category
    ,  count(a.income) AS accounts_count
FROM categories AS c
LEFT JOIN Accounts AS a
ON c.cat = CASE
            WHEN a.income < 20000 THEN 'Low Salary'
            WHEN a.income > 50000 THEN 'High Salary'
            ELSE 'Average Salary'
            END
GROUP BY c.cat
;