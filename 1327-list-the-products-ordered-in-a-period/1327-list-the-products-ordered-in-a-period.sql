# Write your MySQL query statement below
SELECT p.product_name
    , SUM(unit) AS unit
FROM Orders AS o
LEFT JOIN Products AS p
USING(product_id)
WHERE YEAR(order_date) = 2020
    AND MONTH(order_date) = 2
GROUP BY p.product_name
HAVING unit >= 100
;