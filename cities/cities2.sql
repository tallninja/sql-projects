-- CREATE TABLE cities (
-- 	id SERIAL PRIMARY KEY,
-- 	name VARCHAR(100),
-- 	country VARCHAR(100),
-- 	population INTEGER,
-- 	area INTEGER
-- );

-- INSERT INTO
-- 	cities(name, country, population, area)
-- VALUES
-- 	('Shanghai', 'China', 17515271, 15452),
-- 	('Sao Paulo', 'Brazil', 21734682, 7947),
-- 	('Mexico City', 'Mexico', 21804515, 7866),
-- 	('Cairo', 'Egypt', 11515271, 5452),
-- 	('Osaka', 'Japan', 19303000, 13228);

-- SELECT name, population / area AS population_density
-- FROM cities

-- ALTER TABLE cities
-- ADD COLUMN population_density INTEGER

-- ALTER TABLE cities
-- DROP COLUMN population_density;

-- UPDATE cities
-- SET name = 'Shanghai'
-- WHERE id = 3;

-- SELECT * FROM cities;
