-- 1
INSERT INTO
    products (name, count, price)
VALUES
    ('Xbox', 3, 30000);

-- 2
INSERT INTO
    products (name, count, price)
VALUES
    ('iMac 21', 0, 100100);

-- 3
INSERT INTO
    users (first_name, last_name, birthday)
VALUES
    ('Антон', 'Пепеляев', '1992-07-12');

-- 4
INSERT INTO
    users
SET
    first_name = 'Никита',
    last_name = 'Петров';

-- 5
INSERT INTO
    products (name, count, price)
VALUES
    ('iPhone 7', 1, 59990),
    ('iPhone 8', 3, 64990),
    ('iPhone X', 2, 79900);

-- 6
UPDATE products
SET
    name = 'iPhone 10'
WHERE
    name = 'iPhone X';

-- 7
UPDATE users
SET
    salary = salary * 1.1
WHERE
    salary < 20000;

-- 8
UPDATE orders
SET
    STATUS = 'new'
WHERE
    STATUS IS NULL;

-- 9
UPDATE orders
SET
    amount = sum * products_count
WHERE
    amount IS NULL
    OR amount = 0;

-- 10
UPDATE orders
SET
    STATUS = 'success'
WHERE
    id = 5;

-- 11
UPDATE products
SET
    price = price * 1.05
ORDER BY
    price ASC
LIMIT
    5;

-- 12
UPDATE products
SET
    price = price - 5000
ORDER BY
    price DESC
LIMIT
    5;

-- 13
UPDATE products
SET
    count = count + 40
WHERE
    name IN ('Snickers', 'Mars');

-- 14
DELETE FROM visits;

-- 15
DELETE FROM products
WHERE
    count = 0;

-- 16
DELETE FROM cars
WHERE
    year <= 2010;

-- 17
DELETE FROM cars
WHERE
    country = 'KR'
    OR power < 80;

-- 18
DELETE FROM cars
WHERE
    country = 'JP'
    AND (
        power < 80
        OR power > 130
    );

-- 19
TRUNCATE TABLE cars;