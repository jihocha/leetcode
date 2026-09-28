# Write your MySQL query statement below
SELECT user_id
    , ROUND(MAX(t), 2) AS trial_avg_duration
    , ROUND(MAX(p), 2) AS paid_avg_duration
FROM (SELECT user_id
        , CASE WHEN activity_type = 'free_trial'
        THEN AVG(activity_duration) END AS t
        , CASE WHEN activity_type = 'paid'
        THEN AVG(activity_duration) END AS p
    FROM UserActivity
    GROUP BY user_id, activity_type
    HAVING activity_type != 'cancelled'
    ) t
GROUP BY user_id
HAVING COUNT(*) = 2
;