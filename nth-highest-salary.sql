CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
set N=N-1;
  RETURN (
      select DISTINCT salary
      from Employee order by salary DESC  LIMIT 1 OFFSET N
      
  );
END