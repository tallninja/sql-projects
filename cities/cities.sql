DROP TABLE IF EXISTS cities;

-- Creating a table
CREATE TABLE cities (
	name VARCHAR(50),
	country VARCHAR(50),
	area INTEGER,
	population INTEGER
);

-- Inserting data into a table
INSERT INTO cities (name, country, area, population)
VALUES
('Tokyo', 'Japan', 13452, 13515271),
('Dlehi', 'India', 3483, 28514000),
('Shanghai', 'China', 1234, 25582000);

-- Fetching data from a table
SELECT * FROM cities;

SELECT *,
population / area AS population_density
FROM cities;

