SELECT rider_id, vehicle_id, city, SUM(revenue) FROM movr.rides
WHERE city = 'amsterdam' GROUP BY rider_id, vehicle_id, city;

SELECT u.id, u.name, ROUND(AVG(r.revenue),2) AS AVG_Revenue FROM movr.users AS u 
INNER JOIN movr.rides AS r
ON u.id = r.rider_id
WHERE r.city = 'new york'
GROUP BY u.id, u.name
HAVING u.name LIKE '%a%' AND  ROUND(AVG(r.revenue),2) > 50
ORDER BY AVG_Revenue ASC;

SELECT rider_id, AVG(revenue) FROM movr.rides GROUP BY rider_id
HAVING AVG(revenue) > ALL (SELECT AVG(revenue) FROM movr.rides);