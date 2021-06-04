# SQLite
#Select,Inset, update, inner join, self join, left join, order by, group by( having)
#Delete table table name *DELETE statement allows you to delete one row, multiple rows, and all rows in a table.
#Drop table table name *DROP TABLE statement deletes the table from the database and the file on disk completely
#case statement 
  where condition action
  else action
  end name of column
  *The CASE expression is similar to the IF-THEN-ELSE statement in other programming languages.
#UPDATE table
SET column_1 = new_value_1,
    column_2 = new_value_2
WHERE
    search_condition 
ORDER column_or_expression
LIMIT row_count OFFSET offset;  
  
#ATTACH DATABASE
>sqlite3 c:\sqlite\db\chinook.db;
sqlite> .databases
seq  name             file
---  ---------------  ----------------------------------------------------------
0    main             c:\sqlite\db\chinook.db
sqlite> attach database 'c:\sqlite\db\mydb.db' as contacts;
sqlite> .databases
seq  name             file
---  ---------------  ----------------------------------------------------------
0    main             c:\sqlite\db\chinook.db
2    contacts         c:\sqlite\db\contacts.db
sqlite> CREATE TABLE contacts.people(first_name text, last_name text);
sqlite> INSERT INTO contacts.people SELECT firstName, lastName FROM customers;
SELECT * FROM contacts.people;
