-- using datetime function and date and time stored in text storage class
-- create table date_time (d1 TEXT,d2 TEXT);
-- INSERT INTO date_time(d1,d2) values (datetime('now'),datetime('now','localtime'));
-- SELECT * from date_time;

--using julianday function and date is stored as real number
-- 
-- CREATE table datetime_real (d1 REAL,d2 REAL);
INSERT into datetime_real(d1) VALUES ('2021-01-11');
--INSERT into datetime_real(d1,d2) VALUES (julianday('now'),julianday('now','localtime')) ;
--SELECT d1, date(d1),time(d1) from date_time;
SELECT d1,(SELECT date(d2) from date_time), date(d1)-(SELECT date(d2) from date_time) year_diff from datetime_real;
