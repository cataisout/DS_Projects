SELECT location, AVG(popularity)

FROM facebook_employees AS fb_emp
JOIN facebook_hack_survey AS surv
ON fb_emp.id = surv.employee_id 

GROUP BY location