DROP DATABASE IF EXISTS db;

CREATE DATABASE db;

USE db;
CREATE TABLE movies (
    id UUID,
    title VARCHAR(128),
    year SMALLINT,
    income_M FLOAT(4),
    PRIMARY KEY (id)
);

SHOW COLUMNS FROM movies;

ALTER TABLE movies
ALTER COLUMN id SET DEFAULT gen_random_uuid();

CREATE INDEX ON movies (title);

ALTER TABLE movies
ADD CONSTRAINT unicon UNIQUE (title);

-- ALTER TABLE movies
-- ADD UNIQUE (title);

ALTER TABLE movies
ALTER COLUMN title SET NOT NULL;

-- cannot drop unexisting column in table
/* ALTER TABLE movies
DROP COLUMN title2; */

-- cannot add column with duplicate name
/* ALTER TABLE movies
ADD COLUMN title VARCHAR(127); */

SHOW COLUMNS FROM movies;

-- create and populate new table using existing table
/* CREATE TABLE movies2 AS 
SELECT * FROM movies;

SELECT * FROM movies2;

TRUNCATE TABLE movies2;

SELECT * FROM movies2;

DROP TABLE movies2 */