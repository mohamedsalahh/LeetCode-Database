# Write your MySQL query statement below

SELECT CAST(SUBSTRING(CNCT, 1, LOCATE(',', CNCT)) AS UNSIGNED) AS actor_id, CAST(SUBSTRING(CNCT, LOCATE(',', CNCT)+1) AS UNSIGNED) AS director_id
FROM ( 
    SELECT CNCT
    FROM ( 
        SELECT CONCAT(actor_id, ',', director_id) AS CNCT
        FROM ActorDirector
    ) AS Q1
    GROUP BY CNCT
    HAVING COUNT(*) >= 3
) AS Q2;