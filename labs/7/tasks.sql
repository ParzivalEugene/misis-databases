-- 1: Конструкия CASE
SELECT 
    id, 
    NAME, 
    price,
    CASE
        WHEN price < 75 THEN 'Эконом'
        WHEN price BETWEEN 75 AND 200 THEN 'Стандарт'
        WHEN price > 200 THEN 'Премиум'
    END AS 'Ценовая категория'
FROM 
    products;

-- 2
SELECT 
    id, 
    first_name, 
    last_name, 
    age,
    CASE
        WHEN age < 18 THEN 'Несовершеннолетний'
        WHEN age BETWEEN 18 AND 35 THEN 'Молодой специалист'
        WHEN age > 35 THEN 'Профессионал'
    END AS 'Возрастная категория',
    CASE
        WHEN hours_on_platform > 12 THEN 'Активный'
        WHEN hours_on_platform BETWEEN 10 AND 12 THEN 'Стандартный'
        WHEN hours_on_platform < 10 THEN 'Пассивный'
    END AS 'Активность'
FROM 
    users;

-- 1: HAVING и WHERE
SELECT 
    category_id,
    SUM(stock) AS products
FROM 
    products
WHERE 
    stock > 0
GROUP BY 
    category_id
HAVING 
    products > 0
ORDER BY 
    products ASC;

-- 2
SELECT 
    year,
    month,
    SUM(amount) AS amount
FROM 
    deals
GROUP BY 
    year, month
HAVING 
    SUM(amount) < 300000
ORDER BY 
    year, month;

-- 1: GROUP BY
SELECT 
    age,
    COUNT(*) AS clients
FROM 
    users
GROUP BY 
    age
ORDER BY 
    age DESC;

-- 2
SELECT 
    category_id,
    ROUND(AVG(price), 2) AS avg_price
FROM 
    products
WHERE 
    stock > 0
GROUP BY 
    category_id
ORDER BY 
    avg_price ASC;

-- 3
SELECT 
    YEAR(date) AS year,
    SUM(amount) AS income
FROM 
    orders
WHERE 
    status = 'success'
GROUP BY 
    YEAR(date)
ORDER BY 
    year ASC;

-- 1: COUNT, MIN, MAX, AVG
SELECT 
    SUM(amount) AS income
FROM 
    orders
WHERE 
    status = 'success'
    AND DATE_FORMAT(date, '%Y-%m') = '2015-01';

-- 2
SELECT 
    COUNT(*) AS women
FROM 
    users
WHERE 
    sex = 'w'
    AND age < 30;

-- 3
SELECT 
    MAX(amount) AS max_losses
FROM 
    orders
WHERE 
    status = 'cancelled';

-- 4
SELECT 
    ROUND(AVG(amount), 2) AS avg_check
FROM 
    orders
WHERE 
    status = 'success'
    AND YEAR(date) = 2015;

-- 5
SELECT 
    FLOOR(AVG(age)) AS age,
    COUNT(*) AS count
FROM 
    users
WHERE 
    sex = 'm';
