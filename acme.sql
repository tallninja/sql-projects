-- CREATE DATABASE acme;

-- USE acme;

-- CREATE TABLE departments (
-- 	dep_num INT(2) NOT NULL AUTO_INCREMENT, /* department number */
--     dep_name VARCHAR(20) UNIQUE, /* department label */
--     city VARCHAR(20), /* city name */
--     PRIMARY KEY (dep_num)
-- );

-- DROP TABLE departments;

-- CREATE TABLE employees (
-- 	emp_num INT(4) NOT NULL AUTO_INCREMENT,
--     first_name VARCHAR(20),
--     last_name VARCHAR(20),
--     _position VARCHAR(20),
--     superior INT(4),
--     hiring DATE,
--     salary FLOAT(9, 2),
--     commission FLOAT(9, 2),
--     department INT(2),
--     PRIMARY KEY (emp_num),
--     CONSTRAINT dept_fk_constraint
-- 		FOREIGN KEY (department) REFERENCES departments(dep_num)
-- );

-- INSERT INTO departments (dep_name, city)
-- VALUES ("TIE", "Juja"), ("EEE", "Juja"), ("Law", "Nairobi");

-- SELECT * FROM departments;

-- INSERT INTO employees (first_name, last_name, _position, superior, hiring, salary, commission, department)
-- VALUES ("Brian", "Maiyo", "CTO", 2, "2022-05-27", 1000000, 200000, 3);

-- UPDATE employees SET _position = "HR Manager" WHERE emp_num = 1;

-- ALTER TABLE employees ADD CONSTRAINT dsup_fk_constraint
-- 	FOREIGN KEY (superior) REFERENCES employees(emp_num);

-- SHOW CREATE TABLE employees;

-- SELECT * FROM employees;

SELECT first_name, _position, salary, department
FROM employees
WHERE salary > 3500 AND salary < 4500 
AND department < 3;
