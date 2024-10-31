-- #1 ОБЪЕДИНЕНИЕ - Таблицы из разных регионов в единую таблицу с информацией о транспортных средствах
SELECT
    number,
    region,
    mark,
    model
FROM
    cars
UNION ALL
SELECT
    number,
    39 AS region,
    mark,
    model
FROM
    region39
UNION ALL
SELECT
    number,
    region,
    mark,
    model
FROM
    avto;

-- #2 СОРТИРОВКА - Выбор ТОП10 игр, по 2 самых популярных игры из 5 категорий с сортировкой
WITH
    ranked_games AS (
        SELECT
            id,
            name,
            rating,
            category_id,
            ROW_NUMBER() OVER (
                PARTITION BY
                    category_id
                ORDER BY
                    rating DESC,
                    id ASC
            ) AS rank
        FROM
            games
        WHERE
            category_id IN (1, 2, 3, 4, 5)
    )
SELECT
    id,
    name,
    rating,
    CASE
        WHEN category_id = 1 THEN 'Action'
        WHEN category_id = 2 THEN 'RPG'
        WHEN category_id = 3 THEN 'Adventure'
        WHEN category_id = 4 THEN 'Strategy'
        WHEN category_id = 5 THEN 'Shooter'
    END AS genre
FROM
    ranked_games
WHERE
    rank <= 2
ORDER BY
    rating DESC,
    id ASC
LIMIT
    10;

-- #3 ГРУППИРОВКА - Подсчет общей суммы всех платежей клиентов
SELECT
    SUM(amount) AS all_money
FROM
    (
        SELECT
            amount
        FROM
            bank_transactions
        UNION ALL
        SELECT
            amount
        FROM
            cashbox_transactions
        UNION ALL
        SELECT
            amount
        FROM
            paypal_transactions
    ) AS all_transactions;