-- USE store;

-- CREATE TABLE person (
-- 	_id INT AUTO_INCREMENT NOT NULL,
--     _name VARCHAR(255),
--     _dob DATE,
--     PRIMARY KEY (_id)
-- );

-- DELIMITER $$

-- CREATE TRIGGER person_insert_trigger
-- BEFORE INSERT ON person
-- FOR EACH ROW
-- BEGIN
-- 	IF ROUND(DATEDIFF(current_date(), date(NEW._dob)) / 365) < 18
--     THEN
-- 		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Underage persons not allowed';
--     END IF;
-- END$$

-- DELIMITER %%

-- INSERT INTO person (_name, _dob) VALUES
-- ('John Lbalunye', '1999-1-1'), ('Dan Gitari', '2000-1-1');

-- INSERT INTO person (_name, _dob) VALUES
-- ('Levin Wasike', '2015-1-1');