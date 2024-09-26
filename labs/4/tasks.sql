-- 1: Первичный ключ
CREATE TABLE
    users (id INT UNSIGNED NOT NULL PRIMARY KEY, first_name VARCHAR(50), last_name VARCHAR(50), birthday DATE);

INSERT INTO
    users (id, first_name, last_name, birthday)
VALUES
    (1, 'Дмитрий', 'Иванов', NULL),
    (2, 'Анатолий', 'Белый', NULL),
    (3, 'Денис', 'Давыдов', '1995-09-08');

-- 2
CREATE TABLE
    orders (id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, state VARCHAR(8), amount DECIMAL(8, 2));

INSERT INTO
    orders (state, amount)
VALUES
    ('new', 1000.50),
    ('new', 3400.10),
    ('delivery', 7300.00);

-- 3
CREATE TABLE
    passports (series VARCHAR(4) NOT NULL, number VARCHAR(6) NOT NULL, user_id INT UNSIGNED NOT NULL, date_issue DATE, PRIMARY KEY (series, number));

INSERT INTO
    passports (series, number, user_id, date_issue)
VALUES
    ('3206', '147345', 15, '2006-08-12'),
    ('3216', '147345', 234, '2016-09-23'),
    ('2405', '147345', 1, '2015-01-07'),
    ('5411', '147345', 15, '2008-03-03');

-- 4
CREATE TABLE
    files (id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, film_id INT UNSIGNED NOT NULL, size BIGINT UNSIGNED NOT NULL, filename VARCHAR(100));

INSERT INTO
    files (film_id, size, filename)
VALUES
    (356, 28668906700, 'silicon_valey_s02_1080p.zip'),
    (4514, 2684354560, 'dunkirk.mp4'),
    (87145, 734003200, 'milk.mp4');

-- 1: Уникальный индекс
CREATE TABLE
    clients (
        id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
        first_name VARCHAR(50) NOT NULL,
        last_name VARCHAR(50) NOT NULL,
        email VARCHAR(100) NOT NULL,
        passport VARCHAR(10) NOT NULL
    );

ALTER TABLE clients
ADD UNIQUE KEY email (email),
ADD UNIQUE KEY passport (passport);

-- 2
DROP TABLE passports;

CREATE TABLE
    passports (
        id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
        user_id INT UNSIGNED NOT NULL,
        series VARCHAR(4) NOT NULL,
        number VARCHAR(6) NOT NULL,
        state ENUM('active', 'expired') NOT NULL DEFAULT 'active'
    );

ALTER TABLE passports
ADD UNIQUE KEY passport (series, number);

-- 3
CREATE TABLE
    posts (
        id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
        user_id INT UNSIGNED NOT NULL,
        name VARCHAR(100) NOT NULL,
        pub_date DATETIME DEFAULT NULL,
        slug VARCHAR(50) NOT NULL
    );

ALTER TABLE posts
ADD UNIQUE KEY uslug (user_id, slug);

-- 4 
DROP TABLE products;

CREATE TABLE
    products (
        id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
        category_id INT UNSIGNED DEFAULT NULL,
        name VARCHAR(100) NOT NULL,
        slug VARCHAR(50) NOT NULL,
        ean13 CHAR(13) NOT NULL
    );

ALTER TABLE products
ADD UNIQUE KEY category_slug (category_id, slug),
ADD UNIQUE KEY ean13 (ean13);

-- 1: Обычные индексы
CREATE TABLE
    passports (
        id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
        user_id INT UNSIGNED NOT NULL,
        series VARCHAR(4) NOT NULL,
        number VARCHAR(6) NOT NULL,
        state ENUM('active', 'expired') NOT NULL DEFAULT 'active'
    );

ALTER TABLE passports
ADD UNIQUE KEY passport (series, number),
ADD INDEX series (series),
ADD INDEX number (number);

-- 2
CREATE TABLE
    orders (
        id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
        user_id INT UNSIGNED NOT NULL,
        city_id INT UNSIGNED NOT NULL,
        state ENUM('new', 'cancelled', 'delivered', 'completed') NOT NULL DEFAULT 'new',
        amount INT UNSIGNED NOT NULL DEFAULT 0
    );

ALTER TABLE orders
ADD INDEX main_search (user_id, city_id, state),
ADD INDEX user_id (user_id);

-- 1: Удаление индекса
CREATE TABLE
    products (id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, category_id INT UNSIGNED NULL DEFAULT NULL, name VARCHAR(100) NOT NULL);

ALTER TABLE products
ADD INDEX category_id (category_id);

-- 2
CREATE TABLE
    calendar (
        id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
        city_id INT UNSIGNED NOT NULL,
        name VARCHAR(100) NOT NULL,
        description TEXT NOT NULL,
        date DATETIME NOT NULL
    );

ALTER TABLE calendar
ADD INDEX base_query (city_id, date);

-- 3
ALTER TABLE passports
DROP INDEX series,
DROP INDEX number,
ADD UNIQUE INDEX series_number (series, number);

-- 4
DROP TABLE products;

CREATE TABLE
    products (
        id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
        category_id INT UNSIGNED NULL DEFAULT NULL,
        name VARCHAR(100) NOT NULL,
        count TINYINT UNSIGNED NOT NULL DEFAULT 0,
        price DECIMAL(10, 2) NOT NULL DEFAULT 0.08,
        UNIQUE INDEX category_id (category_id),
        INDEX count(COUNT),
        INDEX main_search (category_id, price)
    );

ALTER TABLE products
DROP INDEX category_id,
DROP INDEX count,
DROP INDEX main_search;