-- Lab | SQL Data Aggregation and Transformation

USE sakila;
-- challenge 1
-- 1.1
SELECT 
    MIN(length) AS min_duration,
    MAX(length) AS max_duration
FROM sakila.film;

-- 1.2
SELECT 
    CONCAT(
        FLOOR(AVG(length) / 60), ' hours ',
        ROUND(AVG(length) % 60), ' minutes'
    ) AS average_duration
FROM sakila.film;

-- 2.1
SELECT DATEDIFF(MAX(rental_date), MIN(rental_date)) AS days_operating
FROM sakila.rental;

-- 2.2 
SELECT *,
    MONTH(rental_date) AS rental_month,
    DAYNAME(rental_date) AS rental_weekday
FROM sakila.rental
LIMIT 20;

-- 2.3

SELECT *,
    CASE 
        WHEN DAYNAME(rental_date) IN ('Saturday', 'Sunday') THEN 'weekend'
        ELSE 'workday'
    END AS day_type
FROM Sakila.rental
LIMIT 20;

-- 3
SELECT title AS 'Film title', 
       IFNULL(rental_duration, 'Not Available') AS 'Rental duration'
FROM sakila.film
ORDER BY title ASC;

-- challenge 2
-- 1.1
SELECT COUNT(*) AS 'total films released'
FROM sakila.film;

-- 1.2

SELECT rating, COUNT(*) AS 'number of films'
FROM sakila.film
GROUP BY rating;

-- 1.3
SELECT rating, COUNT(*) AS number_of_films
FROM sakila.film
GROUP BY rating
ORDER BY number_of_films DESC;

-- 2.1
SELECT 
    rating,
    ROUND(AVG(length), 2) AS mean_duration
FROM sakila.film
GROUP BY rating
ORDER BY mean_duration DESC;

-- 2.2

SELECT rating
FROM sakila.film
GROUP BY rating
HAVING AVG(length) > 120;

-- 2.3

SELECT last_name
FROM sakila.actor
GROUP BY last_name
HAVING COUNT(*) = 1;



