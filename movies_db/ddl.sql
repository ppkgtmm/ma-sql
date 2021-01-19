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

SHOW COLUMNS FROM movies;

