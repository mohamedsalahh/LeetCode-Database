# Write your MySQL query statement below

SELECT customer_id, COUNT(*) AS count_no_trans
FROM (
    SELECT customer_id
    FROM Visits
    WHERE visit_id NOT IN (
        SELECT visit_id
        FROM Transactions
    )
) AS Q1
GROUP BY customer_id;