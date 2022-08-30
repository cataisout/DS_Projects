SELECT
   ABS((SELECT MAX(Salary)
    FROM db_employee AS emp
    JOIN db_dept AS dep
    ON emp.department_id = dep.id 
    WHERE dep.department LIKE "%marketing%") -
    (  SELECT DISTINCT MAX(Salary)
    FROM db_employee AS emp
    JOIN db_dept AS dep
    ON emp.department_id = dep.id 
    WHERE dep.department LIKE "%engineering%")) AS Salary_differenceL
    
FROM db_employee 
LIMIT 1

