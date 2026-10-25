CREATE TABLE users (
	id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	full_name TEXT NOT NULL,
	age INT NOT NULL CHECK (age BETWEEN 0 AND 120),
	email TEXT NOT NULL UNIQUE
		CHECK (email LIKE '%_@_%')
		CHECK (email = lower(email))
);

INSERT INTO users (full_name, age, email)
VALUES
	('John Doe', 30, 'john_doe@example.com'),
	('Alice Doe', 25, 'alice_doe@example.com'),
	('Bob Doe', 35, 'bob_doe@example.com');


SELECT *
FROM users;

DELETE FROM users
WHERE full_name = 'Bob Doe';

SELECT *
FROM users;