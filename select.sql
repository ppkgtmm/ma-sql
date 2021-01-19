SHOW TABLES FROM movr;

SHOW COLUMNS FROM movr.users;

SHOW COLUMNS FROM movr.vehicles;

SHOW COLUMNS FROM movr.user_promo_codes;

SHOW COLUMNS FROM movr.rides;

SELECT * FROM movr.users LIMIT 5;

SELECT city FROM movr.users LIMIT 5;

SELECT DISTINCT city, name FROM movr.users; 

SELECT COUNT(DISTINCT city), COUNT(DISTINCT name) FROM movr.users;

SELECT COUNT(city) FROM movr.users;

SELECT COUNT(*) from movr.users;

SELECT * FROM movr.users WHERE city <> 'amsterdam';

SELECT * FROM movr.users WHERE city LIKE 'amsterdam';

SELECT * FROM movr.users WHERE city BETWEEN 'a' AND 'm';

SELECT * FROM movr.users WHERE name IN ('Tyler Dalton','Jennifer Sanders');

SELECT * FROM movr.users WHERE name NOT IN ('Tyler Dalton','Jennifer Sanders');

SELECT * FROM movr.rides LIMIT 5;

SELECT * FROM movr.rides WHERE (revenue < 20 OR revenue > 80) AND (NOT revenue = 0);

SELECT * from movr.rides WHERE city IN ('seattle', 'rome') ORDER BY city ASC, revenue DESC;

SELECT * FROM movr.rides WHERE revenue IS NOT NULL LIMIT 3;

SELECT MIN(start_time), MAX(end_time) FROM movr.rides;

SELECT MAX(end_time) - MIN(start_time) AS interval FROM movr.rides;

SELECT SUM(revenue)/COUNT(revenue) as average, AVG(revenue) FROM movr.rides;

SELECT * FROM movr.users WHERE name LIKE '%er';

SELECT * FROM movr.users WHERE name LIKE '_a%';

SELECT * FROM movr.users WHERE name LIKE '_a_%';

SELECT * FROM movr.users WHERE id IN (SELECT owner_id FROM movr.vehicles WHERE city = 'boston');

SELECT AVG(revenue) AS "Revenue Average" FROM movr.rides;

SELECT id, city AS "Rider Cities" FROM movr.rides LIMIT 5;

SELECT CONCAT(name, ' lives in ' , city)  AS  "User Info" FROM movr.users;

SELECT u.id, v.type FROM movr.users AS u, movr.vehicles as v WHERE u.id = v.owner_id;

SELECT COUNT(*) FROM movr.vehicles AS v INNER JOIN movr.users AS u ON v.owner_id = u.id
LEFT OUTER JOIN movr.rides AS r ON v.id = r.vehicle_id;

SELECT COUNT(v.id), COUNT(r.id), COUNT(u.id) FROM movr.vehicles AS v, movr.rides AS r, movr.users AS u;

SELECT * FROM movr.vehicles AS v FULL OUTER JOIN movr.users AS u ON v.owner_id = u.id;

SELECT * FROM movr.vehicles AS v RIGHT OUTER JOIN movr.users AS u ON v.owner_id = u.id;

SELECT * FROM movr.vehicles AS v, movr.rides AS r, movr.users AS u LIMIT 5;

SELECT 'User City' AS Type, city FROM movr.users
UNION
SELECT 'Vehicle City', city FROM movr.vehicles;


SELECT city FROM movr.users
UNION ALL
SELECT city FROM movr.vehicles WHERE city  = 'boston';

SELECT rider_id, vehicle_id, city, SUM(revenue) FROM movr.rides
WHERE city = 'amsterdam' GROUP BY rider_id, vehicle_id, city;

SELECT u.id, u.name, ROUND(AVG(r.revenue),2) AS AVG_Revenue FROM movr.users AS u 
INNER JOIN movr.rides AS r
ON u.id = r.rider_id
WHERE r.city = 'new york'
GROUP BY u.id, u.name
HAVING u.name LIKE '%a%' AND  ROUND(AVG(r.revenue),2) > 50
ORDER BY AVG_Revenue ASC;

