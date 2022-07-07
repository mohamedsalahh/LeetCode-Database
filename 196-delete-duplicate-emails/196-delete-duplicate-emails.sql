# Please write a DELETE statement and DO NOT write a SELECT statement.
# Write your MySQL query statement below
             
             
DELETE FROM Person 
WHERE id NOT IN (
    SELECT MIN(id) as minId 
    FROM (
        SELECT P1.id, P1.email 
        FROM Person AS P1, Person AS P2 
        WHERE P1.id = P2.id
    ) AS Q1 GROUP BY email
);