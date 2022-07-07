# Write your MySQL query statement below

SELECT name, IFNULL(SumDis, 0) AS travelled_distance
FROM Users 
LEFT JOIN ( 
    SELECT user_id, SUM(distance) AS SumDis
    FROM Rides
    GROUP BY user_id
) AS Q1
ON Users.id = Q1.user_id
ORDER BY SumDis DESC, name;
