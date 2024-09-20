-- 1: Создание простейших таблиц
CREATE TABLE
    orders (id INT, state VARCHAR(10), amount INT);

-- 2
CREATE TABLE
    users (id INT, first_name VARCHAR(20), last_name VARCHAR(50), birthday DATE);

INSERT INTO
    users (id, first_name, last_name, birthday)
VALUES
    (1, 'Дмитрий', 'Иванов', '1995-08-12'),
    (2, 'Светлана', 'Демчук', '1993-07-08'),
    (3, 'Денис', 'Антонов', '1996-12-23');

-- 3
CREATE TABLE
    messages (id INT, subject VARCHAR(100), message TEXT, add_date DATETIME, is_public BOOLEAN);

INSERT INTO
    messages (id, subject, message, add_date, is_public)
VALUES
    (1, 'Первое сообщение', 'Это мое первое сообщение!', '2016-12-12 14:16:00', TRUE);

-- 4
CREATE TABLE
    rating (id INT, car_id INT, user_id INT, rating FLOAT);

INSERT INTO
    rating (id, car_id, user_id, rating)
VALUES
    (1, 1, 1, 4.54),
    (2, 1, 2, 3.34),
    (3, 2, 3, 4.19),
    (4, 2, 11, 1.12);

-- 1: Числовые поля
CREATE TABLE
    products (id INT, name VARCHAR(100), count INT, price INT);

INSERT INTO
    products (id, name, count, price)
VALUES
    (1, 'Холодильник', 10, 50000),
    (2, 'Стиральная машина', 0, 23570),
    (3, 'Утюг', 3, 7300);

-- 2
CREATE TABLE
    orders_products (id INT, product_id INT, sale INT, amount DECIMAL(9, 2));

INSERT INTO
    orders_products (id, product_id, sale, amount)
VALUES
    (1, 245, 0, 230.50),
    (2, 17, 15, 9999999.99),
    (3, 145677, 21, 1240.00);

-- 3
CREATE TABLE
    films (id INT, name VARCHAR(100), rating FLOAT, country CHAR(2));

INSERT INTO
    films (id, name, rating, country)
VALUES
    (1, 'Film A', 8.5, 'US'),
    (2, 'Film B', 7.3, 'GB'),
    (3, 'Film C', 9.0, 'FR');

-- 4
CREATE TABLE
    files (id INT, filename VARCHAR(255), size INT, filetype VARCHAR(3));

INSERT INTO
    files (id, filename, size, filetype)
VALUES
    (1, 'file1.txt', 1048576, 'txt'),
    (2, 'file2.jpg', 2097152, 'jpg'),
    (3, 'file3.pdf', 5242880, 'pdf');

-- 1: Строковые поля
CREATE TABLE
    users_bio (id INT, first_name VARCHAR(50), last_name VARCHAR(60), bio TEXT);

INSERT INTO
    users_bio (id, first_name, last_name, bio)
VALUES
    (1, 'Антон', 'Кулик', 'Отлично учился в школе'),
    (2, 'Сергей', 'Давыдов', ''),
    (3, 'Дмитрий', 'Соколов', 'Программист');

-- 2
CREATE TABLE
    books (id INT, name VARCHAR(100), description VARCHAR(1000), isbn VARCHAR(13));

INSERT INTO
    books (id, name, description, isbn)
VALUES
    (1, 'MySQL 5', 'Хорошая книга', '9781234567890'),
    (2, 'Изучаем SQL', 'Полезная книга.', '9789876543210'),
    (3, 'Python 4-е издаиние', 'Отличная книга.', '9785432167890');

-- 3
CREATE TABLE
    apartments (id INT, image VARCHAR(100), price INT, square INT);

INSERT INTO
    apartments (id, image, price, square)
VALUES
    (1, 'image1.jpg', 3000000, 90),
    (2, 'image2.jpg', 4500000, 110),
    (3, 'image3.jpg', 6000000, 120);

-- 4
CREATE TABLE
    files_download (id INT, file_url VARCHAR(500), file_path VARCHAR(200), size INT);

INSERT INTO
    files_download (id, file_url, file_path, size)
VALUES
    (1, 'http://example.com/file1', '/downloads/file1.jpg', 10485760),
    (2, 'http://example.com/file2', '/downloads/file2.pdf', 20971520),
    (3, 'http://example.com/file3', '/downloads/file3.zip', 52428800);

-- 1: Дата и время
CREATE TABLE
    users (id INT, email VARCHAR(100), date_joined DATE, last_activity DATETIME);

INSERT INTO
    users (id, email, date_joined, last_activity)
VALUES
    (1, 'ivanov.dmitriy@mail.ru', '2020-01-10', '2024-01-12 12:45:00'),
    (2, 'demchuk.svetlana@mail.ru', '2021-06-20', '2024-02-15 08:30:00'),
    (3, 'antonov.denis@mail.ru', '2019-03-15', '2024-03-18 16:10:00');

-- 2
CREATE TABLE
    calendar (id INT, user_id INT, doctor_id INT, visit_date DATETIME);

INSERT INTO
    calendar (id, user_id, doctor_id, visit_date)
VALUES
    (1, 1, 101, '2024-09-10 10:00:00'),
    (2, 2, 102, '2024-09-11 11:00:00'),
    (3, 3, 103, '2024-09-12 09:30:00'),
    (4, 1, 101, '2024-09-13 14:00:00'),
    (5, 2, 102, '2024-09-14 16:15:00');

-- 3
CREATE TABLE
    temperature (id INT, city_id INT, temperature INT, wind_speed INT, mdate DATETIME);

INSERT INTO
    temperature (id, city_id, temperature, wind_speed, mdate)
VALUES
    (1, 1, -10, 5, '2024-01-15 08:00:00'),
    (2, 2, 0, 10, '2024-01-16 09:00:00'),
    (3, 3, 25, 15, '2024-07-10 12:00:00'),
    (4, 4, 30, 8, '2024-07-12 14:00:00'),
    (5, 1, -15, 20, '2024-02-10 06:00:00');

-- 4
CREATE TABLE
    arrival (id INT, user_id INT, a_date DATE, a_time TIME);

INSERT INTO
    arrival (id, user_id, a_date, a_time)
VALUES
    (1, 1, '2024-09-10', '08:45:00'),
    (2, 2, '2024-09-10', '09:00:00'),
    (3, 3, '2024-09-10', '08:50:00'),
    (4, 1, '2024-09-11', '08:40:00');

-- 5
CREATE TABLE
    cars (id INT, mark VARCHAR(20), model VARCHAR(20), year YEAR, mileage INT);

INSERT INTO
    cars (id, mark, model, year, mileage)
VALUES
    (1, 'Лада', 'Веста', 2020, 25000),
    (2, 'Тойота', 'Камри', 2019, 30000),
    (3, 'Форд', 'Фокус', 2018, 40000);

-- 1: Null
CREATE TABLE
    products (id INT NOT NULL, name VARCHAR(120) NOT NULL, category_id INT, price DECIMAL(10, 2) NOT NULL);

INSERT INTO
    products (id, name, category_id, price)
VALUES
    (1, 'Ноутбук', NULL, 55000.00),
    (2, 'Смартфон', 1, 25000.00),
    (3, 'Телевизор', NULL, 40000.00),
    (4, 'Наушники', 2, 5000.00);

-- 2
SELECT
    name,
    category_id,
    price
FROM
    products
WHERE
    category_id is NULL
ORDER BY
    price ASC;

-- 1: Bool, Enum, Set
CREATE TABLE
    articles (id INT NOT NULL, name VARCHAR(80), text TEXT, state ENUM('draft', 'correction', 'public'));

INSERT INTO
    articles (id, name, text, state)
VALUES
    (1, 'Статья 1', 'Это текст первой статьи', 'public'),
    (2, 'Статья 2', 'Это текст второй статьи', 'draft'),
    (3, 'Статья 3', 'Это текст третьей статьи', 'correction');

-- 2
CREATE TABLE
    rooms (id INT NOT NULL, number INT NOT NULL, beds ENUM('1+1', '2+1', '2+2') NOT NULL, additional SET('conditioner', 'bar', 'fridge', 'wifi'));

INSERT INTO
    rooms (id, number, beds, additional)
VALUES
    (1, 101, '2+1', 'wifi,conditioner'),
    (2, 102, '2+2', 'wifi,fridge'),
    (3, 103, '1+1', 'bar');

-- 3
CREATE TABLE
    orders (
        id INT NOT NULL,
        user_id INT NOT NULL,
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

-- 1: Значения по умолчанию
CREATE TABLE
    orders (
        id INT NOT NULL,
        user_id INT NOT NULL,
        amount INT NOT NULL DEFAULT 0,
        created DATETIME NOT NULL,
        state ENUM('new', 'cancelled', 'in_progress', 'delivered', 'completed') NOT NULL DEFAULT 'new'
    );

INSERT INTO
    orders (id, user_id, amount, created, state)
VALUES
    (1, 1, 1000, '2024-09-01 10:00:00', 'new'),
    (2, 2, 2500, '2024-09-02 11:15:00', 'completed'),
    (3, 3, 1500, '2024-09-03 12:30:00', 'in_progress');

-- 23
CREATE TABLE
    users (
        id INT NOT NULL,
        first_name VARCHAR(20) NOT NULL,
        last_name VARCHAR(20) NOT NULL,
        patronymic VARCHAR(20) NOT NULL DEFAULT '',
        is_active BOOLEAN NOT NULL DEFAULT TRUE,
        is_superuser BOOLEAN NOT NULL DEFAULT FALSE
    );

INSERT INTO
    users (id, first_name, last_name, patronymic, is_active, is_superuser)
VALUES
    (1, 'Иван', 'Иванов', 'Петрович', TRUE, FALSE),
    (2, 'Петр', 'Петров', 'Иванович', TRUE, TRUE),
    (3, 'Алексей', 'Сидоров', 'Алексеевич', TRUE, FALSE);

-- 3
CREATE TABLE
    logs (date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP, browser VARCHAR(500) NOT NULL DEFAULT '', is_bot BOOLEAN NOT NULL DEFAULT FALSE);

INSERT INTO
    logs (date, browser, is_bot)
VALUES
    ('2024-09-01 14:00:00', 'Chrome', FALSE),
    ('2024-09-02 10:30:00', 'Firefox', FALSE),
    ('2024-09-03 16:45:00', 'Googlebot', TRUE);

-- 4
CREATE TABLE
    reviews (
        id INT NOT NULL,
        user_id INT NOT NULL,
        date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
        course ENUM('python', 'sql', 'all') NOT NULL DEFAULT 'all',
        text TEXT NOT NULL,
        public BOOLEAN NOT NULL DEFAULT FALSE
    );

INSERT INTO
    reviews (id, user_id, date, course, text, public)
VALUES
    (1, 1, '2024-09-01 10:00:00', 'python', 'Очень полезный курс!', TRUE),
    (2, 2, '2024-09-02 12:30:00', 'sql', 'Превосходный материал по SQL!', FALSE),
    (3, 3, '2024-09-03 15:15:00', 'all', 'Отличный курс по всем темам!', TRUE);