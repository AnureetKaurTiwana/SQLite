SELECT first_name, department_id from employees ORDER by department_id ASC;
SELECT department_id, department_name from departments order by department_id ASC;

/* inner join is used to get data from both the tables by using relationship that is by FOREIGN KEY*/
SELECT first_name, employees.department_id, departments.department_id,department_name
from employees INNER JOIN departments on departments.department_id=employees.department_id order by departments.department_name ASC;

--inner join on three tables 
--jobs have one to many relationship with employees TABLE
--so has departments table with employees
SELECT first_name,last_name,job_title,employee_id,department_name FROM employees e
INNER JOIN departments d on d.department_id=d.department_id
INNER JOIN jobs j on j.job_id=e.job_id ORDER by department_name ASC;