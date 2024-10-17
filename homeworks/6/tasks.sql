-- 1: Функции даты
SELECT
    first_name,
    last_name,
    DATE_FORMAT(birthday, '%d.%m.%Y') AS user_birthday
FROM
    users
WHERE
    YEAR(birthday) = 1994
ORDER BY
    birthday;

-- 2
UPDATE calendar
SET
    visit_date = DATE_ADD(visit_date, INTERVAL 90 MINUTE)
WHERE
    visit_date >= '2017-05-14 13:00:00';

-- 3
SELECT
    id,
    DATE_FORMAT(CONVERT_TZ(visit_date, '+00:00', '+03:00'), '%d.%m.%Y %H:%i') AS visit_date
FROM
    visits
ORDER BY
    visit_date;

-- 4
SELECT
    last_name,
    first_name,
    birthday
FROM
    drivers
WHERE
    sex = 'm'
    AND DATE_ADD(birthday, INTERVAL 18 YEAR) <= '2018-08-08'
ORDER BY
    last_name,
    first_name;

-- 5
SELECT
    id,
    user_id,
    amount,
    DATE_FORMAT(date, '%d.%m.%Y %H:%i') AS date
FROM
    payments
WHERE
    MONTH(date) = 3
    AND YEAR(date) = 2017
ORDER BY
    date DESC
LIMIT
    5;

-- 1: Математические функции
SELECT
    id,
    ABS(temperature) AS temperature
FROM
    experiments
WHERE
    temperature < -10
    OR temperature > 10;

-- 2
SELECT
    id,
    FLOOR(amount * (1 - personal_sale / 100)) AS final_amount
FROM
    bills;

-- 3
SELECT
    id,
    first_name,
    email
FROM
    users
WHERE
    id % 3 = 0;

-- 4
SELECT
    id,
    comments,
    CEIL(comments / 10) AS pages
FROM
    posts;

-- 1: Строковые функции
SELECT
    name,
    price
FROM
    products
WHERE
    LENGTH(name) BETWEEN 5 AND 10
ORDER BY
    name;

-- 2
SELECT
    user_id,
    CONCAT(series, number) AS passport
FROM
    passports
ORDER BY
    user_id;

-- 3
SELECT
    id,
    CONCAT(last_name, ' ', first_name, ' ', patronymic) AS name
FROM
    users
WHERE
    patronymic <> ''
ORDER BY
    last_name,
    first_name,
    patronymic;

-- 4
SELECT
    id,
    SUBSTRING(passport, 1, 4) AS series,
    SUBSTRING(passport, 5, 6) AS number
FROM
    users
WHERE
    passport IS NOT NULL;

-- 5
-- 1) 
ALTER TABLE users
ADD COLUMN first_name VARCHAR(50) DEFAULT '',
ADD COLUMN last_name VARCHAR(50) DEFAULT '';

-- 2) 
UPDATE users
SET
    first_name = SUBSTRING_INDEX(name, ' ', 1),
    last_name = SUBSTRING_INDEX(name, ' ', -1);

-- 3) 
ALTER TABLE users
DROP COLUMN name;