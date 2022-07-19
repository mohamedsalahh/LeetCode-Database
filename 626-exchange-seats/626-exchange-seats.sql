# Write your MySQL query statement below


SELECT S2.id, S1.student
FROM Seat AS S1, Seat AS S2
WHERE (S1.id % 2 AND S1.id + 1 = S2.id) OR (S1.id % 2 = 0 AND S2.id = S1.id - 1)

UNION

SELECT id, student
FROM Seat
WHERE (SELECT MAX(id) FROM Seat) % 2 AND id = (SELECT MAX(id) FROM Seat)

ORDER BY id;