CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  DECLARE result INT;
  SET N = N - 1; -- Adjust N to account for 0-based indexing
  
  SELECT DISTINCT salary INTO result
  FROM Employee
  ORDER BY salary DESC
  LIMIT 1 OFFSET N;
  
  RETURN result;
END;
