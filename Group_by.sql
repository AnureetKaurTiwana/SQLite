---group by to find employees in associated WITH department_id
select department_id, count(employee_id) 
headcount from employees group by	department_id;

--find number of employees in each department_name
select department_name, count(employee_id) headcount from employees e
INNER JOIN departments d on d.department_id=e.department_id
INNER JOIN jobs j on j.job_id=e.job_id
GROUP by department_name; 