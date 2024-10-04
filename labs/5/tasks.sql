-- 1: Полнотекстовый поиск
ALTER TABLE products
ADD FULLTEXT (name);

SELECT
    id,
    name,
    price
FROM
    products
WHERE
    MATCH(name) AGAINST ('Mango джинсы 36 38' IN BOOLEAN MODE);

-- 2
SELECT
    id,
    post
FROM
    forum
WHERE
    MATCH(post, content) AGAINST ('ошибка проблема' IN BOOLEAN MODE);

-- 3
SELECT
    id,
    post
FROM
    forum
WHERE
    MATCH(post, content) AGAINST ('ошиб* проблем*' IN BOOLEAN MODE);

-- 1: Поиск с помощью LIKE
SELECT
    domain
FROM
    domains
WHERE
    domain LIKE '%.ru'
ORDER BY
    created;

-- 2
SELECT
    domain
FROM
    domains
WHERE
    domain LIKE '%.___'
ORDER BY
    domain;