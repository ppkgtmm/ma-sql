SELECT u.id, v.type FROM movr.users AS u, movr.vehicles as v WHERE u.id = v.owner_id;

SELECT COUNT(*) FROM movr.vehicles AS v INNER JOIN movr.users AS u ON v.owner_id = u.id
LEFT OUTER JOIN movr.rides AS r ON v.id = r.vehicle_id;

SELECT COUNT(v.id), COUNT(r.id), COUNT(u.id) FROM movr.vehicles AS v, movr.rides AS r, movr.users AS u;

SELECT * FROM movr.vehicles AS v FULL OUTER JOIN movr.users AS u ON v.owner_id = u.id;

SELECT * FROM movr.vehicles AS v RIGHT OUTER JOIN movr.users AS u ON v.owner_id = u.id;

SELECT * FROM movr.vehicles AS v, movr.rides AS r, movr.users AS u LIMIT 5;
