USE db;

-- INSERT INTO movies (title,year,income_M)
-- VALUES 
--     ('Intro Pt. 1', 2001, 200),
--     ('Into The Woods', 2003, 196),
--     ('Out of this World', 2004, 197),
--     ('Lucifer', 2006, 290),
--     ('Star Fall', 2006, 298),
--     ('KKTR', 2007, 128);

SELECT * FROM movies;

SELECT year, SUM(income_M) AS "Income Million USD" FROM movies
GROUP BY year ORDER BY year;



