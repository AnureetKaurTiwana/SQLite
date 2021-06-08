--select * from employees where EmployeeId in (1,2,3);
--SELECT * from employees where LastName='Adams' OR LastName='Peacock';
--SQL processes AND over OR
--SELECT * FROM employees WHERE LastName='Adams' OR LastName='Peacock' And EmployeeId in (1,2,3);
--always use parenthesis
--SELECT * FROM employees WHERE (LastName='Adams' OR LastName='Peacock') And EmployeeId In(1,2,3);
--Wildcards Ends with manager , manager% start with manager
SELECT * from employees WHERE Title Like '%Manager';