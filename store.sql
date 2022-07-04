-- USE store;

-- CREATE TABLE products (
-- 	_id INT AUTO_INCREMENT NOT NULL,
--     _name VARCHAR(255),
--     _supplier VARCHAR(255),
--     _price BIGINT,
--     PRIMARY KEY (_id)
-- );

-- CREATE TABLE product_history (
-- 	_id INT AUTO_INCREMENT NOT NULL,
--     _product INT,
--     PRIMARY KEY (_id),
--     CONSTRAINT product_constraint
-- 		FOREIGN KEY (_product) REFERENCES products(_id)
-- );

-- ALTER TABLE product_history
-- ADD product_name VARCHAR(255);

-- ALTER TABLE product_history
-- ADD suppier_name VARCHAR(255);

-- ALTER TABLE product_history
-- ADD product_price BIGINT;

-- DELIMITER $$

-- CREATE TRIGGER product_trigger
-- BEFORE UPDATE ON products
-- FOR EACH ROW
-- BEGIN
-- INSERT INTO product_history (_product, product_name, supplier_name, product_price, updated_at) VALUES
--      (OLD._id, OLD._name, OLD._supplier, OLD._price, current_timestamp());
-- END$$

-- DELIMITER %%

-- INSERT INTO products (_name, _supplier, _price) VALUES
-- ('soap', 'John Lbalunye', 50), ('books', 'Dan Gitari', 100);

-- SELECT * FROM products;

-- ALTER TABLE product_history
-- CHANGE suppier_name supplier_name VARCHAR(255);

-- UPDATE products SET _price = 180
-- WHERE _id = 1;

-- TRUNCATE product_history;

-- SELECT * FROM product_history;

-- ALTER TABLE product_history
-- ADD updated_at DATETIME;

-- DROP TRIGGER product_trigger;

-- CREATE VIEW product_view AS
-- SELECT _price FROM products;

SELECT * FROM product_view;

-- INSERT INTO product_view (_price) VALUES (300);