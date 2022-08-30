SELECT DISTINCT id, first_name, last_name, department_id, MAX(salary)

FROM ms_employee_salary
GROUP BY id
ORDER BY Id ASC