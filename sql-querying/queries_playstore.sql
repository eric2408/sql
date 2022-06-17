-- Comments in SQL Start with dash-dash --
SELECT * FROM analytics WHERE id = 1880;

SELECT id, app_name FROM analytics WHERE last_updated = '2018-08-01';

SELECT category, count(*) FROM analytics GROUP BY category;

SELECT * FROM analytics ORDER BY reviews DESC LIMIT 5;

SELECT * FROM analytics WHERE rating >= 4.8 ORDER BY reviews DESC LIMIT 1;

SELECT category, AVG(rating) FROM analytics GROUP BY category ORDER BY avg DESC;

SELECT name, MAX(price), rating FROm analytics WHERE rating < 3;  

SELECT * FROM analytics WHERE min_installs <= 50 AND rating IS NOT NULL ORDER BY rating DESC;

SELECT app_name FROM analytics WHERE rating < 3 AND reviews >= 10000;

SELECT * FROM analytics WHERE price BETWEEN 0.10 and 1.00 ORDER BY reviews DESC LIMIT 10;

SELECT * FROM analytics WHERE last_updated = (SELECT MIN(last_updated) FROM analytics);

SELECT * FROM analytics WHERE price = (SELECT MAX(price) FROM analytics);

SELECT SUM(reviews) FROM analytics;

SELECT category FROM analytics GROUP BY category HAVING count(*) > 300;

SELECT app_name, reviews, min_installs, (reviews/min_install) AS proportion FROM analytics WHERE min_install >= 100000 ORDER BY proportion DESC LIMIT 1;