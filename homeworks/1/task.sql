-- 1
INSERT INTO
    users
SET
    id = 10,
    first_name = 'Никита',
    last_name = 'Петров';

-- 2
INSERT INTO
    products (id, name, count, price)
VALUES
    (9, 'iPhone 7', 1, 59990),
    (10, 'iPhone 8', 3, 64990),
    (11, 'iPhone X', 2, 79900);

-- 3
UPDATE products
SET
    price = price * 1.05
ORDER BY
    price ASC
LIMIT
    5;

-- 4
UPDATE products
SET
    price = price - 5000
ORDER BY
    price DESC
LIMIT
    5;

-- 5
UPDATE products
SET
    count = count + 40
WHERE
    name IN ('Snickers', 'Mars');

-- 6
DELETE FROM products
WHERE
    count = 0;

-- 16
DELETE FROM cars
WHERE
    year <= 2010;

-- 7
DELETE FROM cars
WHERE
    country = 'KR'
    OR power < 80;