-- /*-- DATABASE is mydatabase has FOLLOWING 8 tables 
-- --countries, dependents, jobs, regions, departments, employees, locations
-- */
-- --you have to find all employees who locate in the location with the id 1700.
-- SELECT employee_id,first_name from employees WHERE department_id 
-- in(SELECT department_id from departments WHERE location_id=1700) ORDER by first_name DESC, last_name ASC;
-- 
-- --with comaparison operators
-- SELECT employee_id,first_name from employees where 
-- salary=(SELECT max(salary) from employees) order by first_name;
-- 
-- --finds all employees who salaries are greater than the average salary of all employees
-- SELECT employee_id, first_name from employees WHERE
-- salary>(SELECT avg(salary) from employees);
-- -- 
-- -- --finds all departments which have at least one employee with the salary is greater than 10,000:
-- -- SELECT department_name from departments d where EXISTS(
-- -- SELECT 1 FROM employees e WHERE salary>10000 AND e.department_id=d.department_id);
-- 
-- --minimum salary in a department
-- SELECT min(salary) salary_min,d.department_name from employees e 
-- INNER join departments d where d.department_id=e.department_id group by e.department_id ORDER by salary_min ASC ;
-- 
-- --find average of average salaries by applying subquerry in from 
-- 
-- SELECT round(avg(average_salary),0)
-- FROM 
-- (SELECT avg(salary) average_salary
-- FROM
-- employees
-- group by department_id);
-- 
-- --subquerry in SELECT 
-- SELECT employee_id,first_name,last_name,salary,
-- (SELECT round(avg(salary),0) from employees) average_salary,
-- salary-(SELECT round(avg(salary),0) from employees) difference
-- FROM
-- employees
-- ORDER by first_name,last_name;


	
SELECT 
    employee_id, 
    first_name, 
    last_name
FROM
    employees e
WHERE
    NOT EXISTS( SELECT 
            *
        FROM
            dependents d
        WHERE
            d.employee_id = e.employee_id)
ORDER BY first_name , 
         last_name;
