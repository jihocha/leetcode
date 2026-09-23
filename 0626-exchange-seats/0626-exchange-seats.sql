# Write your MySQL query statement below
SELECT ROW_NUMBER() OVER () AS id
    , student
    FROM (SELECT *,
            ROW_NUMBER() OVER (PARTITION BY new_id ORDER BY id DESC)
        FROM (SELECT *
                , CEIL(ROW_NUMBER() OVER(ORDER BY id) / 2) AS new_id
            FROM Seat
            ) t
        ) tm
;