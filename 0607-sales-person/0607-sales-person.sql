# Write your MySQL query statement below
SELECT name
FROM SalesPerson
WHERE name NOT IN
    (SELECT s.name
        FROM Orders
        LEFT JOIN SalesPerson AS s
        USING(sales_id)
        LEFT JOIN Company AS c
        USING(com_id)
        WHERE c.name = "RED"
    )
;