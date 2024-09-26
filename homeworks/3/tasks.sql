-- 1: Числовые поля
CREATE TABLE
    films (id INT UNSIGNED, name VARCHAR(100) NOT NULL, rating DECIMAL(3, 1) UNSIGNED NOT NULL, country CHAR(2) NOT NULL);

INSERT INTO
    films (id, name, rating, country)
VALUES
    (1, 'Film A', 8.5, 'US'),
    (2, 'Film B', 7.3, 'GB'),
    (3, 'Film C', 9.0, 'FR');

-- 2
CREATE TABLE
    files (id INT UNSIGNED, filename VARCHAR(255) NOT NULL, size BIGINT UNSIGNED NOT NULL, filetype CHAR(3) NOT NULL);

INSERT INTO
    files (id, filename, size, filetype)
VALUES
    (1, 'file1.txt', 1048576, 'txt'),
    (2, 'file2.jpg', 2097152, 'jpg'),
    (3, 'file3.pdf', 5242880, 'pdf');

-- 1: Строковые поля
CREATE TABLE
    apartments (id INT UNSIGNED, image VARCHAR(100), price INT UNSIGNED, square INT UNSIGNED);

INSERT INTO
    apartments (id, image, price, square)
VALUES
    (1, 'image1.jpg', 3000000, 90),
    (2, 'image2.jpg', 4500000, 110),
    (3, 'image3.jpg', 6000000, 120);

-- 2
CREATE TABLE
    files (id INT UNSIGNED, file_url VARCHAR(500), file_path VARCHAR(200), size BIGINT UNSIGNED);

INSERT INTO
    files (id, file_url, file_path, size)
VALUES
    (1, 'http://example.com/file1', '/downloads/file1.jpg', 10485760),
    (2, 'http://example.com/file2', '/downloads/file2.pdf', 20971520),
    (3, 'http://example.com/file3', '/downloads/file3.zip', 52428800);

-- 1: Дата и время
CREATE TABLE
    temperature (id INT UNSIGNED, city_id INT UNSIGNED, temperature TINYINT, wind_speed INT UNSIGNED, mdate DATETIME);

INSERT INTO
    temperature (id, city_id, temperature, wind_speed, mdate)
VALUES
    (1, 1, -10, 5, '2024-01-15 08:00:00'),
    (2, 2, 0, 10, '2024-01-16 09:00:00'),
    (3, 3, 25, 15, '2024-07-10 12:00:00'),
    (4, 4, 30, 8, '2024-07-12 14:00:00'),
    (5, 1, -15, 20, '2024-02-10 06:00:00');

-- 2
CREATE TABLE
    arrival (id INT UNSIGNED, user_id INT UNSIGNED, a_date DATE, a_time TIME);

INSERT INTO
    arrival (id, user_id, a_date, a_time)
VALUES
    (1, 1, '2024-09-10', '08:45:00'),
    (2, 2, '2024-09-10', '09:00:00'),
    (3, 3, '2024-09-10', '08:50:00'),
    (4, 1, '2024-09-11', '08:40:00');

-- 1: Поля автомобилей
CREATE TABLE
    cars (id INT UNSIGNED, mark VARCHAR(20), model VARCHAR(20), year YEAR, mileage INT UNSIGNED);

INSERT INTO
    cars (id, mark, model, year, mileage)
VALUES
    (1, 'Лада', 'Веста', 2020, 25000),
    (2, 'Тойота', 'Камри', 2019, 30000),
    (3, 'Форд', 'Фокус', 2018, 40000);

-- 1: Логические, ENUM и SET
CREATE TABLE
    orders (
        id INT UNSIGNED,
        user_id INT UNSIGNED NOT NULL,
        amount DECIMAL(10, 2) NOT NULL,
        created DATETIME NOT NULL,
        state ENUM('new', 'cancelled', 'in_progress', 'delivered', 'completed') NOT NULL,
        options SET('pack', 'fitting', 'call', 'intercom')
    );

INSERT INTO
    orders (id, user_id, amount, created, state, options)
VALUES
    (1, 1, 1500.50, '2024-09-01 12:00:00', 'new', 'pack,call'),
    (2, 2, 2300.00, '2024-09-02 13:30:00', 'in_progress', 'fitting'),
    (3, 3, 500.99, '2024-09-03 15:45:00', 'delivered', 'intercom,pack');

-- 2
CREATE TABLE
    logs (date DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL, browser VARCHAR(500) DEFAULT '', is_bot BOOLEAN DEFAULT FALSE NOT NULL);

INSERT INTO
    logs (date, browser, is_bot)
VALUES
    ('2024-09-01 14:00:00', 'Chrome', FALSE),
    ('2024-09-02 10:30:00', 'Firefox', FALSE),
    ('2024-09-03 16:45:00', 'Googlebot', TRUE);

-- 3
CREATE TABLE
    reviews (
        id INT UNSIGNED,
        user_id INT UNSIGNED NOT NULL,
        date DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
        course ENUM('python', 'sql', 'all') DEFAULT 'all' NOT NULL,
        text TEXT NOT NULL,
        public BOOLEAN DEFAULT FALSE NOT NULL
    );

INSERT INTO
    reviews (id, user_id, date, course, text, public)
VALUES
    (1, 1, '2024-09-01 10:00:00', 'python', 'Очень полезный курс!', TRUE),
    (2, 2, '2024-09-02 12:30:00', 'sql', 'Превосходный материал по SQL!', FALSE),
    (3, 3, '2024-09-03 15:15:00', 'all', 'Отличный курс по всем темам!', TRUE);