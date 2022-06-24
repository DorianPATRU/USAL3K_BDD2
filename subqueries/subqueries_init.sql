DROP DATABASE IF EXISTS subqueries;

CREATE DATABASE subqueries;

USE subqueries;


CREATE TABLE roles
(
	role_id INT auto_increment PRIMARY KEY,
    role_name VARCHAR(50)
);
 
CREATE TABLE users
(
	id INT auto_increment PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(255),
    role_id int,
    CONSTRAINT fk_userrole FOREIGN KEY(role_id) REFERENCES roles(role_id)
);

INSERT INTO roles
VALUES
(NULL, 'admin'),
(NULL, 'registered'),
(NULL, 'banned');

INSERT INTO users (username, email, role_id)
VALUES
('Mike', 'm@m.fr', 1),
('Popo', 'p@p.fr', 2),
('René', 'r@r.fr', 2),
('Cindy', 'c@c.fr', 1),
('Léo', 'l@l.fr', 3);

CREATE TABLE connected_users
(
	id INT auto_increment PRIMARY KEY,
    id_user int,
    viewed Datetime,
    FOREIGN KEY (id_user) REFERENCES users(id)
) Engine=MEMORY;




