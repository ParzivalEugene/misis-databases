-- 1
SELECT
    cities.name AS name,
    countries.name AS country,
    cities.population AS population
FROM
    cities
    JOIN countries ON cities.country = countries.id
WHERE
    cities.population >= 1000000
    AND FIND_IN_SET('Europe', countries.pw)
ORDER BY
    cities.population DESC;

-- 2
SELECT
    categories.name AS category,
    SUM(products.count) AS products
FROM
    categories
    JOIN products ON categories.id = products.category
WHERE
    products.count > 0
GROUP BY
    categories.name
ORDER BY
    categories.name;

-- 3
SELECT
    genres.name AS genres,
    COUNT(artists.id) AS artists
FROM
    genres
    LEFT JOIN artists ON genres.id = artists.genre_id
GROUP BY
    genres.name
ORDER BY
    genres.name;

-- 4
SELECT
    products.name AS name,
    products.price AS price,
    categories.name AS category
FROM
    products
    LEFT JOIN categories ON products.category = categories.id
ORDER BY
    products.name;

-- 5
SELECT
    roles.name AS name,
    COUNT(employees.id) AS employees
FROM
    roles
    LEFT JOIN employees ON roles.id = employees.role_id
    AND employees.active = True
GROUP BY
    roles.name
ORDER BY
    employees DESC,
    roles.name;

-- 6
SELECT
    countries.name AS country,
    cities.name AS city
FROM
    countries
    LEFT JOIN cities ON countries.id = cities.country
ORDER BY
    country,
    city;