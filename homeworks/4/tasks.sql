-- 1: Обычные индексы
CREATE TABLE
    orders (
        id INT AUTO_INCREMENT PRIMARY KEY,
        user_id INT UNSIGNED NOT NULL,
        state VARCHAR(8) NOT NULL DEFAULT 'new',
        amount INT UNSIGNED NOT NULL DEFAULT 0,
        INDEX user_id (user_id),
        INDEX state (state)
    );

-- 2
CREATE TABLE
    products (
        id INT AUTO_INCREMENT PRIMARY KEY,
        category_id INT UNSIGNED DEFAULT NULL,
        name VARCHAR(100) NOT NULL,
        count TINYINT UNSIGNED NOT NULL DEFAULT 0,
        price DECIMAL(10, 2) NOT NULL DEFAULT 0.00,
        INDEX category_id (category_id),
        INDEX price (price)
    );

-- 1: Удаление индекса
ALTER TABLE passports
DROP INDEX series,
DROP INDEX number,
ADD INDEX series_number (series, number);

-- 2
ALTER TABLE products
DROP INDEX category_id,
DROP INDEX count;

--1: Первичный ключ
CREATE TABLE
    passports (
        series CHAR(4) NOT NULL,
        number CHAR(6) NOT NULL,
        user_id INT UNSIGNED NOT NULL,
        date_issue DATE,
        PRIMARY KEY (series, number)
    );

INSERT INTO
    passports (series, number, user_id, date_issue)
VALUES
    ('AB12', '345678', 1, '2022-01-01'),
    ('CD34', '987654', 2, '2021-05-15'),
    ('EF56', '123456', 3, '2020-10-20'),
    ('GH78', '654321', 4, '2019-07-25');

-- 2
CREATE TABLE
    files (id INT AUTO_INCREMENT PRIMARY KEY, film_id INT UNSIGNED NOT NULL, size BIGINT UNSIGNED, filename VARCHAR(100) NOT NULL);

INSERT INTO
    files (film_id, size, filename)
VALUES
    (1, 150000000, 'movie1.mp4'),
    (2, 250000000, 'movie2.mp4'),
    (3, 350000000, 'movie3.mp4');

-- 1: Уникальный индекс
CREATE TABLE
    posts (
        id INT AUTO_INCREMENT PRIMARY KEY,
        user_id INT UNSIGNED NOT NULL,
        name VARCHAR(100) NOT NULL,
        pub_date DATETIME DEFAULT NULL,
        slug VARCHAR(50) NOT NULL,
        UNIQUE uslug (user_id, slug)
    );

-- 2
CREATE TABLE
    products (
        id INT AUTO_INCREMENT PRIMARY KEY,
        category_id INT UNSIGNED DEFAULT NULL,
        name VARCHAR(100) NOT NULL,
        slug VARCHAR(50) NOT NULL,
        ean13 CHAR(13) NOT NULL UNIQUE,
        UNIQUE category_slug (category_id, slug)
    );