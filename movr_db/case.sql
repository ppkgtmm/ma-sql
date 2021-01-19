SELECT ROUND(revenue,0) AS rounded, 
CASE 
    WHEN ROUND(revenue,0) % 2 = 0 THEN 'revenue is even number'
    ELSE 'revenue is odd number'
END AS Description
FROM movr.rides;

SELECT * FROM movr.vehicles AS v 
FULL OUTER JOIN movr.users AS u 
ON v.owner_id = u.id
ORDER BY (
    CASE
        WHEN v.id IS NULL THEN u.id
        ELSE v.id
    END
);
