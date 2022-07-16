# Write your MySQL query statement below

SELECT id, "Root" AS type
FROM Tree
WHERE p_id is NULL

UNION

SELECT id, "Leaf" AS type
FROM Tree
WHERE id NOT IN (
    SELECT p_id 
    FROM Tree 
    WHERE p_id IS NOT NULL
) AND p_id IS NOT NULL

UNION

SELECT id, "Inner" AS type
FROM Tree
WHERE id IN (
    SELECT p_id 
    FROM Tree 
) AND p_id IS NOT NULL;
