-- CREATE table data (
-- id INTEGER PRIMARY KEY,
-- VAL );
-- 
-- INSERT INTO 
-- data (VAL)
-- VALUES (1.5),('A'),(NULL);
SELECT id,val,typeof(val) from data ORDER by VAL;