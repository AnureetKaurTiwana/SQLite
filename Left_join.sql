--select country_name and country_id from countries
select country_id,country_name from countries where country_id in('UK','US','CN');

-- SELECT street_address from locations
select country_id,street_address,city from locations where country_id in('UK','US','CN');

--left join gives all data from left table and only the common data from right one
select c.country_id,c.country_name,l.street_address,l.city from countries c LEFT join locations l on l.country_id=c.country_id
where c.country_id in('UK','US','CN');

--select country_name which has no record in location TABLE that is its location id is NULL
SELECT country_name  from countries left JOIN locations l on countries.country_id=l.country_id 
where l.location_id is NULL ;

