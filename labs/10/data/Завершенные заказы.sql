SET foreign_key_checks = 0;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS orders;
SET foreign_key_checks = 1;
CREATE TABLE users (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NULL,
    last_name VARCHAR(50) NULL,
    age INTEGER NULL
);
INSERT INTO users (id, first_name, last_name, age)
VALUES
    (1, 'Вероника', 'Петрова', 20),
    (2, 'Светлана', 'Иванова', 17),
    (3, 'Елена', 'Абрамова', 18),
    (4, 'Василиса', 'Кац', 15),
    (5, 'Алёна', 'Сорокина', 22),
    (6, 'Алёна', 'Федькова', 28),
    (7, 'Лиана', 'Сорокин', 21),
    (8, 'Карина', 'Белая', 30),
    (9, 'Анастасия', 'Дейчман', 16),
    (10, 'Юлия', 'Фёдорова', 25);
CREATE TABLE orders (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_id INTEGER NULL,
    date DATETIME NULL,
    amount INTEGER NULL,
    status VARCHAR(50) NULL
);
INSERT INTO orders (id, user_id, date, amount, status)
VALUES
    (1, 3, '2014-01-23 17:04:04', 4500, 'completed'),
    (2, 1, '2014-03-12 12:12:43', 700, 'completed'),
    (3, 10, '2014-12-31 08:53:25', 1240, 'new'),
    (4, 7, '2015-01-04 18:23:09', 500, 'completed'),
    (5, 1, '2015-01-04 18:25:27', 8700, 'cancelled'),
    (6, 4, '2015-01-12 09:23:14', 1350, 'completed'),
    (7, 10, '2015-01-14 17:16:39', 600, 'new'),
    (8, 1, '2015-02-01 13:32:17', 680, 'completed'),
    (9, 3, '2014-02-16 14:44:05', 1400, 'completed'),
    (10, 5, '2015-02-28 02:00:47', 4300, 'cancelled'),
    (11, 10, '2015-03-12 08:30:23', 8000, 'completed'),
    (12, 2, '2015-04-01 13:04:47', 980, 'completed'),
    (13, 2, '2015-04-14 23:21:25', 1600, 'completed');