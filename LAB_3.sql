-- Lab | SQL Data Aggregation and Transformation

USE sakila;

-- 1.1
SELECT c.name AS category, COUNT(f.film_id) AS num_films
FROM category c
JOIN film_category fc ON c.category_id = fc.category_id
JOIN film f ON fc.film_id = f.film_id
GROUP BY c.name;


-- 1.2 

SELECT s.staff_id, CONCAT(s.first_name, ' ', s.last_name) AS staff_name, SUM(p.amount) AS total_amount
FROM staff s
JOIN payment p ON s.staff_id = p.staff_id
WHERE p.payment_date >= '2005-08-01' AND p.payment_date < '2005-09-01'
GROUP BY s.staff_id, staff_name;


-- 1.3
SELECT a.actor_id, CONCAT(a.first_name, ' ', a.last_name) AS actor_name, COUNT(fa.film_id) AS num_films
FROM actor a
JOIN film_actor fa ON a.actor_id = fa.actor_id
GROUP BY a.actor_id, actor_name
ORDER BY num_films DESC
LIMIT 1;

-- 1.4

SELECT c.customer_id, CONCAT(c.first_name, ' ', c.last_name) AS customer_name, COUNT(r.rental_id) AS num_rentals
FROM customer c
JOIN rental r ON c.customer_id = r.customer_id
GROUP BY c.customer_id, customer_name
ORDER BY num_rentals DESC
LIMIT 1;

-- 1.5 
SELECT staff_id, first_name, last_name, address_id
FROM staff;


-- 1.6 

SELECT f.title AS film_title, COUNT(fa.actor_id) AS num_actors
FROM film f
JOIN film_actor fa ON f.film_id = fa.film_id
GROUP BY f.title;


-- 1.7 
SELECT c.customer_id, CONCAT(c.first_name, ' ', c.last_name) AS customer_name, SUM(p.amount) AS total_paid
FROM customer c
JOIN payment p ON c.customer_id = p.customer_id
GROUP BY c.customer_id, customer_name
ORDER BY c.last_name, c.first_name;

-- 1.8 

SELECT c.name AS category, f.title AS film_title
FROM category c
JOIN film_category fc ON c.category_id = fc.category_id
JOIN film f ON fc.film_id = f.film_id;

