SELECT * from employees;
-- lets find out who reports to whom tht is pair or employees and managers using inner join and left JOIN
--firt using inner JOIN
select e.first_name||' '|| e.last_name as employee, m.first_name||' '||m.last_name as manager from employees e
INNER JOIN employees m on m.employee_id=e.manager_id;
--left join 
select e.first_name||' '|| e.last_name as employee, m.first_name||' '||m.last_name as manager from employees e
LEFT JOIN employees m on m.employee_id=e.manager_id;
