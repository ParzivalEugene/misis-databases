SET foreign_key_checks = 0;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS calendar;
SET foreign_key_checks = 1;
CREATE TABLE users (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NULL,
    last_name VARCHAR(50) NULL,
    is_doctor BOOLEAN NULL
);
INSERT INTO users (id, first_name, last_name, is_doctor)
VALUES
    (1, 'Виктор', 'Алтушев', False),
    (2, 'Светлана', 'Иванова', False),
    (3, 'Елена', 'Абрамова', False),
    (4, 'Василиса', 'Кац', True),
    (5, 'Антон', 'Сорокин', False),
    (6, 'Алёна', 'Алясева', False),
    (7, 'Лиана', 'Белая', True),
    (8, 'Карина', 'Белая', False),
    (9, 'Анастасия', 'Дейчман', True),
    (10, 'Юлия', 'Фёдорова', False);
CREATE TABLE calendar (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    doctor_id INTEGER NULL,
    client_id INTEGER NULL,
    visit_date DATETIME NULL
);
INSERT INTO calendar (id, doctor_id, client_id, visit_date)
VALUES
    (1, 4, 1, '2017-04-16 11:00:00'),
    (2, 4, 2, '2017-04-17 12:00:00'),
    (3, 7, 6, '2017-04-16 15:30:00'),
    (4, 9, 8, '2017-04-17 10:00:00'),
    (5, 4, 7, '2017-04-17 13:00:00'),
    (6, 4, 5, '2017-04-17 14:00:00'),
    (7, 7, 1, '2017-04-17 14:00:00'),
    (8, 9, 2, '2017-04-17 13:30:00'),
    (9, 9, 3, '2017-04-17 12:30:00'),
    (10, 9, 5, '2017-04-18 12:00:00'),
    (11, 4, 6, '2017-04-17 15:30:00'),
    (12, 4, 6, '2017-04-17 16:30:00'),
    (13, 4, 8, '2017-04-17 17:00:00'),
    (14, 7, 2, '2017-04-20 12:30:00'),
    (15, 9, 3, '2017-05-17 14:00:00'),
    (16, 9, 4, '2017-04-17 15:00:00');