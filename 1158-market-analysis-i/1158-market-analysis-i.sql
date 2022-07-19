# Write your MySQL query statement below


SELECT user_id AS buyer_id, join_date, IFNULL(orders_in_2019, 0) AS orders_in_2019
FROM Users LEFT JOIN (
    SELECT buyer_id, COUNT(order_id) AS orders_in_2019
    FROM Orders
    WHERE order_date LIKE '2019%'
    GROUP BY buyer_id
) AS Q1
ON user_id = buyer_id;
