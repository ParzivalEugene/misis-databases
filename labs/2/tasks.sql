INSERT INTO
    products (name, count, price)
VALUES
    ('Xbox', 3, 30000);

INSERT INTO
    products (name, count, price)
VALUES
    ('iMac 21', 0, 100100);

INSERT INTO
    users (first_name, last_name, birthday)
VALUES
    ('Антон', 'Пепеляев', '1992-07-12');

INSERT INTO
    users
SET
    first_name = 'Никита',
    last_name = 'Петров';

INSERT INTO
    products (name, count, price)
VALUES
    ('iPhone 7', 1, 59990),
    ('iPhone 8', 3, 64990),
    ('iPhone X', 2, 79900);

UPDATE products
SET
    name = 'iPhone 10'
WHERE
    name = 'iPhone X';

UPDATE users
SET
    salary = salary * 1.1
WHERE
    salary < 20000;

UPDATE orders
SET
    STATUS = 'new'
WHERE
    STATUS IS NULL;

UPDATE orders
SET
    amount = sum * products_count
WHERE amount IS NULL or amount = 0;

UPDATE orders
SET
    STATUS = 'success'
WHERE
    id = 5;

UPDATE products
SET
    price = price * 1.05
ORDER BY
    price ASC
LIMIT
    5;

UPDATE products
SET
    price = price - 5000
ORDER BY
    price DESC
LIMIT
    5;

UPDATE products
SET
    count = count + 40
WHERE
    name IN ('Snickers', 'Mars');

DELETE FROM visits;

DELETE FROM products
WHERE
    count = 0;

DELETE FROM cars
WHERE
    year <= 2010;

DELETE FROM cars
WHERE
    country = 'KR'
    OR power < 80;

DELETE FROM cars
WHERE
    country = 'JP'
    AND (
        power < 80
        OR power > 130
    );

TRUNCATE TABLE cars;