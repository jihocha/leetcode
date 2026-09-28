# Write your MySQL query statement below

SELECT machine_id
    , ROUND(AVG(processing), 3) AS processing_time
FROM (SELECT machine_id
        , process_id
        , (MAX(timestamp) - MIN(timestamp)) AS processing
    FROM Activity
    GROUP BY machine_id
        , process_id
    ) t
GROUP BY machine_id
;