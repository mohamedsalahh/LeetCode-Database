# Write your MySQL query statement below

SELECT name, balance
FROM Users, (
    SELECT account, SUM(amount) AS balance
    FROM Transactions
    GROUP BY account
    HAVING balance > 10000
) AS Q1
WHERE Q1.account = Users.account;