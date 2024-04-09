USE sakila;

SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'sakila';

-- Retrieve all data from the actor table
SELECT *
FROM actor;

-- Retrieve all data from the film table
SELECT *
FROM film;

-- Retrieve all data from the customer table
SELECT *
FROM customer;

-- Titles of all films from the film table
SELECT title
FROM film;

-- List of languages used in films, with the column aliased as language from the language table
SELECT name
FROM language;

-- List of first names of all employees from the staff table
SELECT first_name
FROM staff;

SELECT DISTINCT release_year
FROM film;

SELECT COUNT(*) AS num_employees
FROM staff;

SELECT COUNT(*) AS num_stores
FROM store;

-- Count the number of films available for rent
SELECT COUNT(*) AS num_films_available
FROM inventory;

-- Count the number of films that have been rented
SELECT COUNT(*) AS num_films_rented
FROM rental;

SELECT COUNT(DISTINCT last_name) AS num_distinct_last_names
FROM actor;

-- Retrieve the 10 longest films.
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

SELECT *
FROM actor
WHERE first_name LIKE 'SCARLETT%';

SELECT *
FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;


SELECT COUNT(*) AS num_films_behind_the_scenes
FROM film
WHERE special_features LIKE '%Behind the Scenes%';




