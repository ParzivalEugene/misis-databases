SET foreign_key_checks = 0;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS deals;
SET foreign_key_checks = 1;
CREATE TABLE users (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NULL,
    last_name VARCHAR(50) NULL,
    age INTEGER NULL
);
INSERT INTO users (id, first_name, last_name, age)
VALUES
    (1, 'Виктор', 'Алтушев', 20),
    (2, 'Светлана', 'Иванова', 17),
    (3, 'Елена', 'Абрамова', 18),
    (4, 'Василиса', 'Кац', 15),
    (5, 'Антон', 'Сорокин', 22),
    (6, 'Алёна', 'Алясева', 28),
    (7, 'Лиана', 'Белая', 21),
    (8, 'Карина', 'Белая', 30),
    (9, 'Анастасия', 'Дейчман', 16),
    (10, 'Юлия', 'Фёдорова', 25);
CREATE TABLE deals (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_id INTEGER NULL,
    date DATE NULL,
    amount INTEGER NULL
);
INSERT INTO deals (id, user_id, date, amount)
VALUES
    (1, 1, '2015-01-04', 24500),
    (2, 2, '2015-01-04', 62000),
    (3, 3, '2015-01-12', 1350),
    (4, 1, '2015-01-14', 600),
    (5, 2, '2015-01-23', 75000),
    (6, 5, '2015-01-31', 35000),
    (7, 7, '2015-02-01', 6800),
    (8, 1, '2015-02-16', 12000),
    (9, 2, '2015-02-28', 75000),
    (10, 8, '2015-03-12', 210000),
    (11, 4, '2015-03-12', 35300),
    (12, 1, '2015-04-01', 78000),
    (13, 2, '2015-04-14', 112000),
    (14, 5, '2015-04-14', 49000),
    (15, 4, '2015-04-14', 84000);