DROP TABLE IF EXISTS cities;

CREATE TABLE cities (
	name VARCHAR(50),
	country VARCHAR(50),
	area INTEGER,
	population INTEGER
);

INSERT INTO cities (name, country, area, population)
VALUES ('Tokyo', 'Japan', 13452, 13515271);

SELECT * FROM cities

