-- 1. Получение id, названия товара и данных из таблицы products_details
SELECT
    p.id,
    p.name,
    pd.application_area,
    pd.description,
    pd.spray_scheme
FROM
    products AS p
    JOIN products_details AS pd ON p.id = pd.product_id
ORDER BY
    p.price;

-- 2. Получение данных пользователей, зарегистрировавшихся после 1 января 2016 и с серией паспорта, начинающейся на 32
SELECT
    u.id,
    u.first_name,
    u.last_name
FROM
    users AS u
    JOIN users_p AS up ON u.id = up.user_id
WHERE
    u.date_joined > '2016-01-01 00:00:00'
    AND up.passport_series LIKE '32%'
ORDER BY
    u.last_name;

-- 3. Обновление email и фамилии пользователя с id = 8
UPDATE users AS u
JOIN users_details AS ud ON u.id = ud.user_id
SET
    u.email = 'karina.n@domain.com',
    u.last_name = 'Некифорова'
WHERE
    u.id = 8;

-- 4. Добавление нового пользователя Антона Дмитриева
INSERT INTO
    users (first_name, last_name)
VALUES
    ('Антон', 'Дмитриев');

INSERT INTO
    users_details (user_id, biography)
VALUES
    (LAST_INSERT_ID(), 'Антон родился в 1993 году.');

-- 5. Обновление биографии Антона Дмитриева и Василисы Кац
UPDATE users_details
SET
    biography = CASE
        WHEN user_id = (
            SELECT
                id
            FROM
                users
            WHERE
                first_name = 'Антон'
                AND last_name = 'Дмитриев'
        ) THEN 'Антон родился в 1993 году.'
        WHEN user_id = (
            SELECT
                id
            FROM
                users
            WHERE
                first_name = 'Василиса'
                AND last_name = 'Кац'
        ) THEN 'Василиса Кац родилась в 1995 году.'
    END
WHERE
    user_id IN (
        (
            SELECT
                id
            FROM
                users
            WHERE
                first_name = 'Антон'
                AND last_name = 'Дмитриев'
        ),
        (
            SELECT
                id
            FROM
                users
            WHERE
                first_name = 'Василиса'
                AND last_name = 'Кац'
        )
    );