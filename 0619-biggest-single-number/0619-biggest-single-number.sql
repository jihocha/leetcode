# Write your MySQL query statement below
SELECT MAX(num) AS num
FROM
(SELECT *
FROM MyNumbers
GROUP BY num
HAVING COUNT(*) = 1) t
;