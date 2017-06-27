

CREATE TABLE todos (id SERIAL PRIMARY KEY, title VARCHAR(255) NOT NULL, details VARCHAR(2048), priority INT NOT NULL DEFAULT (1), created_at TIMESTAMP NOT NULL, completed_at TIMESTAMP);

INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('Tapes', 'Return some video tapes', 1, '2017-10-12 10:30:23', '2017-10-12 23:59:59');

INSERT INTO todos (title, details, priority, created_at) VALUES ('Cook', 'Cook up some dinner', 2, '2017-11-12 10:20:23');

INSERT INTO todos (title, details, priority, created_at) VALUES ('Groceries', 'Buy them groceries', 3, '2017-11-22 11:30:23');

INSERT INTO todos (title, details, priority, created_at) VALUES ('Spaceship', 'Build a spaceship', 4, '2017-12-12 12:30:23');

INSERT INTO todos (title, details, priority, created_at) VALUES ('Workout', 'Go to the gym', 5, '2017-10-12 10:30:23');



SELECT title FROM todos WHERE completed_at is NULL;

SELECT title FROM todos WHERE priority > 1;

UPDATE todos SET completed_at = '2018-11-12 10:20:23' WHERE id = 2;

DELETE FROM todos WHERE completed_at IS NOT NULL;

