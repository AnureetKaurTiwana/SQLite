--update child's sirname same as parent's sirname
UPDATE dependents 
SET last_name=(
	SELECT last_name
	from employees
	WHERE employee_id=dependents.employee_id
	);
--show all the dependents of the employees
SELECT e.first_name,e.last_name, relationship,d.first_name,d.last_name from dependents d
INNER JOIN employees e on e.employee_id=d.employee_id;
