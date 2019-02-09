use sakila

Select first_name, last_name
	from actor
    ;

SELECT UPPER(CONCAT(first_name," ",last_name)) AS 'Actor Name'
FROM actor
;

SELECT actor_id, first_name, last_name
FROM actor
WHERE first_name = 'Joe'
;

SELECT actor_id, first_name, last_name
FROM actor
WHERE last_name LIKE '%GEN%'
;

-- 2c
SELECT actor_id, first_name, last_name
FROM actor
WHERE last_name LIKE '%LI%'
ORDER BY last_name, first_name
;

SELECT country_id, country
FROM country
WHERE country IN('Afghanistan', 'Bangladesh', 'China')
;

-- 3a
ALTER TABLE actor
ADD COLUMN middle_name varchar(40) AFTER first_name
;

-- 3b
ALTER TABLE actor
MODIFY COLUMN middle_name blob
;

-- 3c
ALTER TABLE actor
DROP COLUMN middle_name
;

-- 4a
SELECT last_name, count(last_name) AS 'Last Name Count'
FROM actor
GROUP BY last_name
;
-- 4b
SELECT last_name, count(last_name) AS 'Last Name Count'
FROM actor
GROUP BY last_name
HAVING `Last Name Count` >= 2

;
-- 4c
UPDATE actor
SET first_name = 'HARPO'
WHERE first_name = 'GROUCHO' AND last_name = 'Williams'
;

 -- 4d
UPDATE actor
SET first_name =
	CASE 
	  WHEN first_Name = 'Harpo'
       THEN 'GROUCHO'
      ELSE 'MUCHO GROUCHO'
	END
WHERE actor_id = 172
;

-- 5a
SHOW CREATE TABLE address;

--6a

-- 6a
SELECT staff.first_name, staff.last_name, address.address
FROM staff
JOIN address
ON (staff.address_id = address.address_id)
;

