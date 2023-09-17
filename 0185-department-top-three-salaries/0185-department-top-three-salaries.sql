WITH DepartmentSalaries AS (
  SELECT
    e.name AS Employee,
    e.salary AS Salary,
    d.name AS Department,
    DENSE_RANK() OVER (PARTITION BY e.departmentId ORDER BY e.salary DESC) AS salary_rank
  FROM Employee e
  JOIN Department d ON e.departmentId = d.id
)

SELECT Department, Employee, Salary
FROM DepartmentSalaries
WHERE salary_rank <= 3
ORDER BY Department, salary_rank;
