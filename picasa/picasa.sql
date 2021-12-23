-- CREATE TABLE users
-- (
-- 	id SERIAL PRIMARY KEY,
-- 	first_name VARCHAR(255),
-- 	last_name VARCHAR(255),
-- 	phone_number VARCHAR(255),
-- 	password VARCHAR(255)
-- );

-- INSERT INTO users
-- 	(first_name, last_name, phone_number, password)
-- VALUES
-- 	('Ernest', 'Wambua', '0727037680', 'password1234'),
-- 	('Charles', 'Obama', '0712420431', 'password123'),
-- 	('Arianna', 'Mueni', '0719286396', 'password12'),
-- 	('Josepnine', 'Kivuva', '0729888223', 'password1');

-- UPDATE users
-- SET first_name = 'Josephine'
-- WHERE id = 4;

-- SELECT * FROM users;

-- CREATE TABLE posts
-- (
-- 	id SERIAL PRIMARY KEY,
-- 	user_id INTEGER REFERENCES users(id),
-- 	url VARCHAR(255)
-- );

-- INSERT INTO posts
-- 	(user_id, url)
-- VALUES
-- 	(1, 'http://picasa.io/post_1'),
-- 	(2, 'http://picasa.io/post_2'),
-- 	(3, 'http://picasa.io/post_3'),
-- 	(4, 'http://picasa.io/post_4'),
-- 	(1, 'http://picasa.io/post_5'),
-- 	(1, 'http://picasa.io/post_6'),
-- 	(4, 'http://picasa.io/post_7'),
-- 	(1, 'http://picasa.io/post_8'),
-- 	(3, 'http://picasa.io/post_9');
	
-- SELECT * FROM posts;

-- CREATE TABLE comments
-- (
-- 	id SERIAL PRIMARY KEY,
-- 	post_id INTEGER REFERENCES posts(id),
-- 	user_id INTEGER REFERENCES users(id),
-- 	comment VARCHAR(1024)
-- );

-- INSERT INTO comments
-- 	(post_id, user_id, comment)
-- VALUES
-- 	(1, 1, 'Splendid !'),
-- 	(1, 2, 'Amazing !'),
-- 	(2, 1, 'Beautiful !'),
-- 	(1, 3, 'Love !'),
-- 	(1, 4, 'Fantastic !'),
-- 	(5, 1, 'Disgusting !'),
-- 	(5, 4, 'Fake !'),
-- 	(5, 3, 'Mhmmm !'),
-- 	(9, 2, 'Beautiful !'),
-- 	(7, 3, 'Love !'),
-- 	(3, 4, 'Fantastic !'),
-- 	(4, 1, 'Disgusting !');
	
-- SELECT * FROM comments;

-- CREATE TABLE likes
-- (
-- 	id SERIAL PRIMARY KEY,
-- 	post_id INTEGER REFERENCES posts(id),
-- 	user_id INTEGER REFERENCES users(id)
-- );

-- INSERT INTO likes
-- 	(post_id, user_id)
-- VALUES
-- 	(1, 1),
-- 	(1, 2),
-- 	(1, 3),
-- 	(1, 4),
-- 	(2, 1),
-- 	(3, 2),
-- 	(4, 3),
-- 	(5, 4),
-- 	(3, 1),
-- 	(4, 2),
-- 	(5, 3),
-- 	(6, 4),
-- 	(7, 1),
-- 	(8, 2),
-- 	(9, 3),
-- 	(2, 4);
	
-- SELECT * FROM likes;

-- SELECT *
-- FROM posts
-- WHERE user_id = 1;

-- SELECT * FROM posts
-- JOIN users ON users.id = posts.user_id;

-- SELECT url, first_name
-- FROM posts
-- JOIN users
-- ON users.id = posts.user_id;

SELECT post_id, comment, first_name
FROM comments
JOIN users
ON users.id = comments.user_id;


