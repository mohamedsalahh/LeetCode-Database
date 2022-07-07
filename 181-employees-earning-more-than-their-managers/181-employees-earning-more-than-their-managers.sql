# Write your MySQL query statement below

SELECT Employee.name AS 'Employee'
FROM Employee, Employee AS Manager
WHERE Employee.managerId = Manager.id and Employee.salary > Manager.salary;