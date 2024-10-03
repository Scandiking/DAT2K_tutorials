/*
1. Find and download and import database 'dvdrental'
2. Now apply queries in Section 2 provided in this link:
   www.postgresqltutorial.com
*/

-- Section 2: Filtering data



-- WHERE
SELECT
	*
FROM 
	country
WHERE 
	country_id BETWEEN 0 AND 50
ORDER BY
	country_id;

-- 1) Using WHERE clause with the equal (=) operator example
SELECT last_name, first_name
FROM customer
WHERE first_name = 'Jamie'; -- Rice, Waugh

-- 2) Using the WHERE clause with the AND operator example
SELECT last_name, first_name
FROM customer
WHERE first_name = 'Jamie' AND last_name = 'Rice';

-- 3) Using the WHERE clause with the OR operator example:
SELECT first_name, last_name
FROM customer
WHERE last_name = 'Rodriguez' -- Laura
OR first_name = 'Adam'; -- Gooch

-- 4) Using the WHERE clause with the IN operator example
SELECT first_name, last_name 
FROM customer
WHERE first_name IN ('Ann', 'Anne', 'Annie'); -- Evans, Powell, Russell

-- 5) Using the WHERE clause with the LIKE operator example
SELECT first_name, last_name
FROM customer
WHERE first_name LIKE 'Ann%';
/*
Anna Hill, Ann Evans, Anne Powell,
Annie Russell, Annette Olson
*/

-- 6) Using the WHERE clause with the BETWEEN operator example
SELECT first_name, LENGTH(first_name) name_length
FROM customer
WHERE first_name LIKE 'A%'
	AND LENGTH(first_name) BETWEEN 3
	AND 5
ORDER BY name_length;

-- 7) Using the WHERE clause with the not equal operator <> example
SELECT first_name, last_name
FROM customer
WHERE first_name LIKE 'Bra%'
AND last_name <> 'Motley'; -- Note you can use != && <> interchangeably because they are equivalent



-- AND operator
-- 1) Basic PostgreSQL AND operator examples
SELECT true AND true AS result; -- true
SELECT true AND false AS result; -- false
SELECT true AND null AS result -- null
SELECT false AND false AS result -- false
SELECT false AND null AS result -- false
SELECT null AND null AS result -- null

-- 2) Using the AND operator in the WHERE clause
SELECT title, length, rental_rate
FROM film
WHERE length > 180
AND rental_rate < 1;



-- OR operator
SELECT 1 <> 1 AS result -- false
-- 1) Basic PostgreSQL OR operator examples
SELECT true OR true AS result; -- true
SELECT true OR false AS result -- true
SELECT true OR null AS result -- true
SELECT false OR false AS result -- false
SELECT false OR null AS result -- null
SELECT null OR null AS result -- null

-- 2) Using the OR operator in the WHERE clause
SELECT title, rental_rate
FROM film
WHERE rental_rate = 0.99 OR rental_rate = 2.99



-- LIMIT
-- 1) Using PostgreSQL LIMIT to constrain the number of returned rows
SELECT film_id, title, release_year
FROM film
ORDER BY film_id
LIMIT 5;

-- 2) Using the LIMIT clause with the OFFSET clause example
SELECT film_id, title, release_year
FROM film
ORDER BY film_id
LIMIT 4 OFFSET 3;

-- 3) Using LIMIT OFFSET to get top/bottom N rows
SELECT film_id, title, rental_rate
FROM film
ORDER BY rental_rate DESC
LIMIT 10;



-- FETCH
SELECT film_id, title
FROM film
ORDER BY title
FETCH FIRST ROW ONLY;

SELECT film_id, title
FROM film
ORDER BY title
FETCH FIRST 1 ROW ONLY;

SELECT film_id, title
FROM film
ORDER BY title
FETCH FIRST 5 ROW ONLY;



-- IN
-- 1.) Using the PostgreSQL IN operator with a list of numbers
SELECT film_id, title
FROM film
WHERE film_id IN (1, 2, 3);

-- 2.) Using the PostgreSQL IN operator with a list of strings
SELECT first_name, last_name
FROM actor
WHERE last_name IN ('Allen', 'Chase', 'Davis')
ORDER BY last_name;

-- 3.) Using the PostgreSQL IN operartor with a list of dates
SELECT payment_id, amount, payment_date
FROM payment
WHERE payment_date::date IN ('2007-02-15', '2007-02-16');

SELECT film_id, title
FROM film
WHERE film_id NOT IN (1, 2, 3)
ORDER BY film_id;

SELECT film_id, title
FROM film
WHERE film_id <> 1 AND film_id <> 2 AND film_id <> 3
ORDER BY film_id;



-- BETWEEN
-- 1.) Using the PostgreSQL BETWEEN operator with numbers
SELECT payment_id, amount
FROM payment
WHERE payment_id BETWEEN 17503 AND 17505
ORDER BY payment_id;

-- 2.) Using the PostgreSQL NOT BETWEEN example
SELECT payment_id, amount
FROM payment
WHERE payment_id NOT BETWEEN 17503 AND 17505
ORDER BY payment_id;

-- 3.) Using the PostgreSQL BETWEEN with a date range
SELECT payment_id, amount, payment_date
FROM payment
WHERE payment_date BETWEEN '2007-02-15' AND '2007-02-20' AND amount > 10
ORDER BY payment_date;



-- LIKE
SELECT first_name, last_name
FROM customer
WHERE first_name LIKE 'Jen%';

-- 1.) Basic LIKE operator examples
SELECT 'Apple' LIKE 'Apple' AS result;
SELECT 'Apple' LIKE 'A%' AS result;

-- 2.) Using the LIKE operator with table data
SELECT first_name, last_name
FROM customer
WHERE first_name LIKE '%er%'
ORDER BY first_name;

-- 3.) Using the LIKE operator a pattern that contains both wildcards
SELECT first_name, last_name
FROM customer
WHERE first_name LIKE '_her%'
ORDER BY first_name;

-- 4.) PostgreSQL NOT LIKE examples
SELECT first_name, last_name
FROM customer
WHERE first_name NOT LIKE 'Jen%'
ORDER BY first_name;

-- PostgreSQL extensions of the LIKE operator
/*
PostgreSQL ILIKE operator allows for case-insensitive matching.
*/




-- IS NULL
-- 1.) Basic IS NULL example
SELECT address, address2 
FROM address
WHERE address2 IS NULL;

-- 2.) Using the IS NOT NULL operator example
SELECT address, address2
FROM address
WHERE address2 IS NOT NULL;

