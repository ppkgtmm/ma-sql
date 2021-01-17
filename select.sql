SHOW TABLES FROM movr;

SHOW COLUMNS FROM movr.users;

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
