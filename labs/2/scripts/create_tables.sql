SET
    foreign_key_checks = 0;

DROP TABLE IF EXISTS users;

SET
    foreign_key_checks = 1;

CREATE TABLE
    users (
        id INT UNSIGNED NOT NULL,
        first_name VARCHAR(50) NULL,
        last_name VARCHAR(50) NULL,
        birthday DATE NULL,
        salary INTEGER NULL,
        job VARCHAR(50) NULL,
        PRIMARY KEY (id)
    );

INSERT INTO
    users (id, first_name, last_name, birthday, salary, job)
VALUES
    (1, 'Дмитрий', 'Петров', '2000-03-14', 25000, 'офис-менеджер'),
    (2, 'Ольга', 'Антонова', '1999-12-01', 41000, 'дизайнер'),
    (3, 'Сергей', 'Васильев', '2002-02-20', 40000, 'младший программист'),
    (4, 'Констанин', 'Степаниденко', '2004-03-07', 30000, 'водитель'),
    (5, 'Алена', 'Шикова', '1999-08-17', 0, 'фотограф'),
    (6, 'Василина', 'Парамнова', '2000-02-10', 28000, 'секретарь'),
    (7, 'Александр', 'Пузаков', '2002-02-20', 120000, 'ведущий программист'),
    (8, 'Алина', 'Антонова', '2002-01-01', 40000, 'верстальщик');

SET
    foreign_key_checks = 0;

DROP TABLE IF EXISTS orders;

SET
    foreign_key_checks = 1;

CREATE TABLE
    orders (
        id INT UNSIGNED NOT NULL,
        user_id INTEGER NULL,
        products_count INTEGER NULL,
        sum INTEGER NULL,
        status VARCHAR(20) NULL,
        amount INTEGER NULL DEFAULT 0,
        PRIMARY KEY (id)
    );

INSERT INTO
    orders (id, user_id, products_count, sum, status)
VALUES
    (1, 1, 2, 1300, 'new'),
    (2, 18, 1, 200, 'cancelled'),
    (3, 11, 1, 2140, 'in_progress'),
    (4, 145, 5, 6800, 'new'),
    (5, 23, 1, 999, 'new'),
    (6, 1, 2, 7690, 'cancelled'),
    (7, 17, 1, 1600, 'new'),
    (8, 5, 4, 400, 'delivery'),
    (9, 2355, 1, 1450, 'new'),
    (10, 13, 7, 13000, 'new');

DROP TABLE IF EXISTS products;

CREATE TABLE
    products (id INT UNSIGNED NOT NULL, name VARCHAR(255) NULL, count INTEGER NULL, price INTEGER NULL, PRIMARY KEY (id));

INSERT INTO
    products (id, name, count, price)
VALUES
    (1, 'Стиральная машина', 5, 10000),
    (2, 'Холодильник', 0, 10000),
    (3, 'Микроволновка', 3, 4000),
    (4, 'Пылесос', 2, 4500),
    (5, 'Вентилятор', 0, 700),
    (6, 'Телевизор', 7, 31740);