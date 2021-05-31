
--work on employees TABLE

SELECT salary from employees LIMIT 10;

--use of where clause
select employee_id,salary from employees where salary<3000;

/* increase 5% for employees whose salary is less than 3000*/
UPDATE employees set salary=salary*1.5 where salary<3000;
select employee_id,salary from employees limit 5;

/*query calculates the year of services of employees on January 1st,
 2016 using the FLOOR() ,DATEDIFF() and CURRENT_DATE functions */
 select employee_id,hire_date, ((julianday('2016-01-01')-julianday(hire_date))/365)  YoS 
 from employees;

 --orderby clause which bydefault show in ascending ORDER
 select * from employees ORDER by salary DESC LIMIT 10;
 
 --Now to remove first 2 rows and return the next 10 rows use OFFSET
 select * from employees ORDER by salary DESC LIMIT 10 OFFSET 2;
 
 
 /*Suppose you have to get employees whose has 2nd highest salary in the company. 
 To do so, you use the LIMIT OFFSET clauses as follows. */
 select employee_id,first_name,salary FROM employees order by salary desc LIMIT 1 OFFSET 1;
 
 --but it will not consider duplicate salary records to consider that use FOLLOWING
 SELECT salary from employees order by salary DESC LIMIT 2;
 SELECT first_name,salary from employees where salary=17000;

 --better way is using subquerry
SELECT first_name,salary FROM employees where 
salary in ( SELECT DISTINCT salary from employees order by salary desc LIMIT 1 OFFSET 1);
 
 

