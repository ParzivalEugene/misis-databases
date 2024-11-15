SET foreign_key_checks = 0;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS orders;
SET foreign_key_checks = 1;
CREATE TABLE users (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NULL,
    last_name VARCHAR(50) NULL,
    age INTEGER NULL,
    sex VARCHAR(1) NULL
);
INSERT INTO users (id, first_name, last_name, age, sex)
VALUES
    (1, 'Дмитрий', 'Федьков', 18, 'm'),
    (2, 'Светлана', 'Иванова', 30, 'w'),
    (3, 'Никита', 'Трутнев', 17, 'm'),
    (4, 'Денис', 'Кац', 22, 'm'),
    (5, 'Алена', 'Сорокина', 16, 'w'),
    (6, 'Василий', 'Федьков', 44, 'm'),
    (7, 'Ярослав', 'Сорокин', 17, 'm'),
    (8, 'Денис', 'Белый', 23, 'm'),
    (9, 'Анатолий', 'Дейчман', 21, 'm'),
    (10, 'Юлия', 'Фёдорова', 18, 'w'),
    (11, 'Андрей', 'Ройзман', 30, 'm'),
    (12, 'София', 'Турыгина', 15, 'w'),
    (13, 'Анастасия', 'Татаренкова', 21, 'w'),
    (14, 'Валерий', 'Редько', 29, 'm');
CREATE TABLE orders (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_id INT UNSIGNED NULL,
    date DATETIME NULL,
    amount INTEGER NULL,
    status VARCHAR(50) NULL
);
INSERT INTO orders (id, user_id, date, amount, status)
VALUES
    (1, 7, '2017-01-04 18:23:09', 500, 'success'),
    (2, 1, '2017-01-04 18:25:27', 8700, 'cancelled'),
    (3, 4, '2017-01-12 09:23:14', 1350, 'success'),
    (4, 10, '2017-01-14 17:16:39', 600, 'new'),
    (5, 3, '2017-01-23 17:04:04', 4500, 'success'),
    (6, 12, '2017-02-01 13:04:47', 980, 'success'),
    (7, 1, '2017-02-01 13:32:17', 680, 'success'),
    (8, 10, '2017-02-12 08:30:23', 8000, 'success'),
    (9, 5, '2017-02-12 12:12:43', 700, 'success'),
    (10, 2, '2017-02-14 23:21:25', 1600, 'success'),
    (11, 3, '2017-02-16 14:44:05', 1400, 'success'),
    (12, 5, '2017-02-28 02:00:47', 4300, 'cancelled'),
    (13, 13, '2017-03-02 08:53:25', 1240, 'new');