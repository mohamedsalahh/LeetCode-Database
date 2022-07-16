# Write your MySQL query statement below

SELECT Department.name AS 'Department', Q2.name AS 'Employee', salary
FROM Department, (
    SELECT Employee.departmentId AS depId, name, salary
    FROM Employee, (
        SELECT departmentId, MAX(salary) AS MaxSalary
        FROM Employee
        GROUP BY departmentId
    ) AS Q1
    WHERE Employee.departmentId = Q1.departmentId AND salary = MaxSalary
) AS Q2
WHERE Department.id = Q2.depId;