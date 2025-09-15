CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
    RETURN (
       SELECT DISTINCT(salary) FROM (
            SELECT salary, DENSE_RANK() OVER(ORDER BY salary DESC) AS sal_rank 
            FROM Employee
        ) as T
        WHERE sal_rank = @N

    );
END