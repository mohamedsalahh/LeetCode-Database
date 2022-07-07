# Write your MySQL query statement below


SELECT D.id, Jan_Revenue, Feb_Revenue, Mar_Revenue, Apr_Revenue, May_Revenue, Jun_Revenue, Jul_Revenue, Aug_Revenue, Sep_Revenue, Oct_Revenue, Nov_Revenue, Dec_Revenue
FROM (SELECT DISTINCT id FROM Department) AS D
LEFT JOIN (SELECT id, revenue AS Jan_Revenue FROM Department WHERE month = 'Jan') AS Q1
ON D.id = Q1.id
LEFT JOIN (SELECT id, revenue AS Feb_Revenue FROM Department WHERE month = 'Feb') AS Q2
ON D.id = Q2.id
LEFT JOIN (SELECT id, revenue AS Mar_Revenue FROM Department WHERE month = 'Mar') AS Q3
ON D.id = Q3.id
LEFT JOIN (SELECT id, revenue AS Apr_Revenue FROM Department WHERE month = 'Apr') AS Q4
ON D.id = Q4.id
LEFT JOIN (SELECT id, revenue AS May_Revenue FROM Department WHERE month = 'May') AS Q5
ON D.id = Q5.id
LEFT JOIN (SELECT id, revenue AS Jun_Revenue FROM Department WHERE month = 'Jun') AS Q6
ON D.id = Q6.id
LEFT JOIN (SELECT id, revenue AS Jul_Revenue FROM Department WHERE month = 'Jul') AS Q7
ON D.id = Q7.id
LEFT JOIN (SELECT id, revenue AS Aug_Revenue FROM Department WHERE month = 'Aug') AS Q8
ON D.id = Q8.id
LEFT JOIN (SELECT id, revenue AS Sep_Revenue FROM Department WHERE month = 'Sep') AS Q9
ON D.id = Q9.id
LEFT JOIN (SELECT id, revenue AS Oct_Revenue FROM Department WHERE month = 'Oct') AS Q10
ON D.id = Q10.id
LEFT JOIN (SELECT id, revenue AS Nov_Revenue FROM Department WHERE month = 'Nov') AS Q11
ON D.id = Q11.id
LEFT JOIN (SELECT id, revenue AS Dec_Revenue FROM Department WHERE month = 'Dec') AS Q12
ON D.id = Q12.id;