-- write your queries here
SELECT * FROM owners FULL JOIN vehicles ON owners.id = vehicles.owner_id;

SELECT o.first_name, o.last_name, count(owner_id) FROM owners o JOIN vehicles v ON o.id = v.owner_id GROUP BY (first_name, last_name) ORDER BY first_name;

SELECT o.first_name, o.last_name, ROUND(AVG(v.price)), COUNT(owner_id) 
FROM owners o JOIN vehicles v ON o.id = v.owner_id GROUP BY (first_name, last_name) 
HAVING COUNT(owner_id) > 1 AND ROUND(AVG(v.price)) > 10000 ORDER BY first_name DESC;