SELECT department, 
       first_name,
       salary, 
       AVG(salary) OVER(partition by department)
FROM employee;