# Write your MySQL query statement below


SELECT name, SUM(amount) AS balance
FROM Transactions, Users
WHERE Users.account = Transactions.account
GROUP BY Transactions.account
HAVING balance > 10000;