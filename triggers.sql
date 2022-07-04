-- CREATE USER 'ocharo'@'%' IDENTIFIED BY 'password123';

-- GRANT ALL PRIVILEGES ON db1.* TO 'ocharo'@'%';

-- USE db1;

-- CREATE TABLE students (
-- 	_id INT NOT NULL AUTO_INCREMENT,
--     _name VARCHAR(255) NOT NULL,
--     PRIMARY KEY (_id)
-- 

-- CREATE TABLE units (
-- 	_id INT NOT NULL AUTO_INCREMENT,
--     _name VARCHAR(255) NOT NULL,
--     _code VARCHAR(255) NOT NULL,
--     INDEX code_idx(_code),
--     PRIMARY KEY (_id, _code)
-- );

-- CREATE TABLE enrollment (
-- 	_id INT NOT NULL AUTO_INCREMENT,
--     _student INT NOT NULL,
--     _unit INT NOT NULL,
--     PRIMARY KEY (_id),
--     CONSTRAINT studentfk_constraint FOREIGN KEY (_student) REFERENCES students(_id),
--     CONSTRAINT unitfk_constraint FOREIGN KEY (_unit) REFERENCES units(_id)
-- );
-- DELIMITER $$

-- CREATE TRIGGER enrollment_trigger
-- AFTER UPDATE ON enrollment FOR EACH ROW
-- BEGIN
-- 	INSERT INTO enrollment_history (_student, _unit, _enrollment)
-- 	VALUES (OLD._student, OLD._unit, OLD._id);
-- END$$

-- DELIMITER ;

-- UPDATE enrollment
-- SET _unit = 2
-- WHERE _id = 2;

SELECT * FROM enrollment_history;

-- CREATE TABLE enrollment_history (
-- 	_id INT NOT NULL AUTO_INCREMENT,
-- 	_student INT NOT NULL,
-- 	_unit INT NOT NULL,
--     _enrollment INT NOT NULL,
--     _date DATETIME,
-- 	PRIMARY KEY (_id),
-- 	CONSTRAINT studenthistfk_constraint
-- 		FOREIGN KEY (_student) REFERENCES students(_id) ON DELETE CASCADE,
-- 	CONSTRAINT unitfhistk_constraint
-- 		FOREIGN KEY (_unit) REFERENCES units(_id) ON DELETE CASCADE,
--     CONSTRAINT enrollmenthistfk_constraint
-- 		FOREIGN KEY (_enrollment) REFERENCES enrollment(_id) ON DELETE CASCADE
-- );

-- ALTER TABLE students ADD CONSTRAINT UNIQUE (_name);

-- ALTER TABLE enrollment
-- ADD CONSTRAINT FOREIGN KEY (_student) REFERENCES students(_id)
-- ON DELETE CASCADE;

-- ALTER TABLE enrollment
-- ADD CONSTRAINT FOREIGN KEY (_unit) REFERENCES units(_id)
-- ON DELETE CASCADE;

-- INSERT INTO students (_name)
-- VALUES ("Ocharo"), ("John"), ("Nathan");

-- INSERT INTO units (_name, _code)
-- VALUES
-- ('Electromagnetics', 'ETI2301'),
-- ('Signals', 'ETI2403'),
-- ('Power Electronics', 'ETI2309');

-- INSERT INTO enrollment (_student, _unit) VALUES
-- (1, 2), (2, 3), (1, 1), (6, 2), (4, 2), (5, 1), (1, 2);

-- SELECT * FROM students;
-- SELECT * FROM units;
-- SELECT * FROM enrollment;

-- CREATE VIEW units_view AS
-- SELECT _name  FROM students
-- WHERE _id IN
-- (SELECT _student FROM enrollment
-- WHERE _unit = 1);

-- SELECT * FROM units_view;



