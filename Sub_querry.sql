/*-- DATABASE is mydatabase has FOLLOWING 8 tables 
--countries, dependents, jobs, regions, departments, employees, locations
*/
-- you have to find all employees who locate in the location with the id 1700.
SELECT employee_id,first_name from employees WHERE department_id 
in(SELECT department_id from departments WHERE location_id=1700) ORDER by first_name DESC, last_name ASC;

--with comaparison operators
SELECT employee_id,first_name from employees where 
salary=(SELECT max(salary) from employees) order by first_name;

--finds all employees who salaries are greater than the average salary of all employees
SELECT employee_id, first_name from employees WHERE
salary>(SELECT avg(salary) from employees);

--finds all departments which have at least one employee with the salary is greater than 10,000:
SELECT department_name from departments d where EXISTS(
SELECT 1 FROM employees e WHERE salary>10000 AND e.department_id=d.department_id);

