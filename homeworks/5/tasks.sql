-- 1: Полнотекстовый индекс
SELECT
    NAME
FROM
    products
WHERE
    NOT MATCH(NAME) AGAINST ('Mango')
    AND MATCH(NAME) AGAINST ('джинсы жилет');

-- 2
SELECT
    id,
    NAME,
    price
FROM
    products
WHERE
    name LIKE '%Джинсы Mango%'
ORDER BY
    price;

-- 3
SELECT
    id,
    NAME,
    price
FROM
    products
WHERE
    MATCH(NAME) AGAINST ('Mango')
    AND MATCH(NAME) AGAINST ('Джинсы Юбка')
    AND count > 0
ORDER BY
    price;

-- 1: Поиск с помощью like
UPDATE wines
SET
    price = price - 1
WHERE
    price LIKE "%00";

CREATE FULLTEXT INDEX mark ON cars (mark);

-- 2
SELECT
    *
FROM
    cars
WHERE
    MATCH(mark) AGAINST ('BMW')
    AND mark NOT LIKE "BMW";