# Write your MySQL query statement below


SELECT Q1.stock_name, SellSum - BuySum AS capital_gain_loss
FROM (
    SELECT stock_name, SUM(price) AS SellSum
    FROM Stocks
    WHERE operation = 'Sell'
    GROUP BY stock_name
) AS Q1, (
    SELECT stock_name, SUM(price) AS BuySum
    FROM Stocks
    WHERE operation = 'Buy'
    GROUP BY stock_name
) AS Q2
WHERE Q1.stock_name = q2.stock_name;



