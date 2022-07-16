CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
      SELECT salary
      FROM (
          SELECT DISTINCT salary, ROW_NUMBER() OVER(ORDER BY salary DESC) AS RowNum
          FROM (
              SELECT DISTINCT salary 
              FROM employee
          ) AS Q1
      ) as Q2
     where Q2.RowNum = n
  );
END