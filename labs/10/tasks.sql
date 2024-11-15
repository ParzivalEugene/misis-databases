-- Задача №1_11
ALTER TABLE artists
ADD COLUMN genre_id INT UNSIGNED NULL;

ALTER TABLE artists
ADD CONSTRAINT fk_artists_genre_id FOREIGN KEY (genre_id) REFERENCES genres (id);

-- Задача №2_11
ALTER TABLE products
ADD CONSTRAINT fk_products_category_id FOREIGN KEY (category_id) REFERENCES categories (id);

-- Сделки
SELECT
    u.last_name,
    u.first_name,
    SUM(d.amount) AS total
FROM
    users u
    LEFT JOIN deals d ON u.id = d.user_id
GROUP BY
    u.id,
    u.last_name,
    u.first_name
ORDER BY
    total DESC;

-- Завершенные заказы
SELECT
    DATE_FORMAT(o.date, '%d.%m.%Y') AS date,
    o.amount,
    u.last_name,
    u.first_name
FROM
    orders o
    JOIN users u ON o.user_id = u.id
WHERE
    o.status = 'completed'
ORDER BY
    o.date;

-- Расписание врача
SELECT
    u.last_name AS patient_last_name,
    u.first_name AS patient_first_name,
    TIME_FORMAT(c.visit_date, '%H:%i') AS visit_time
FROM
    calendar c
    JOIN users u ON c.client_id = u.id
WHERE
    c.doctor_id = 9
    AND DATE(c.visit_date) = '2017-04-17'
ORDER BY
    c.visit_date;

-- Февральские заказы
SELECT
    o.*
FROM
    orders o
    JOIN users u ON o.user_id = u.id
WHERE
    u.sex = 'w'
    AND u.age >= 18
    AND o.date BETWEEN '2017-02-01' AND '2017-02-28 23:59:59'
ORDER BY
    o.amount;

-- Джинсы и юбки
SELECT
    p.id,
    p.name,
    p.price
FROM
    products p
    JOIN brands b ON p.brand = b.id
    JOIN categories c ON p.category = c.id
WHERE
    b.name = 'Mango'
    AND c.name IN ('Джинсы', 'Юбки')
    AND p.count > 0
ORDER BY
    p.price,
    p.id;