SET foreign_key_checks = 0;
DROP TABLE IF EXISTS categories_internal_key;
SET foreign_key_checks = 1;
CREATE TABLE categories_internal_key (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    parent_id INTEGER NULL,
    name VARCHAR(50) NULL
);
INSERT INTO categories_internal_key  (id, parent_id, name)
VALUES
    (1, NULL, 'Шоколад'),
    (2, NULL, 'Молочные продукты'),
    (3, NULL, 'Фрукты и овощи'),
    (4, 3, 'Фрукты'),
    (5, NULL, 'Напитки'),
    (6, 2, 'Сметана'),
    (7, 2, 'Молоко'),
    (8, NULL, 'Хлеб'),
    (9, 5, 'Квас'),
    (10, NULL, 'Чай и кофе'),
    (11, 10, 'Кофе'),
    (12, NULL, 'Мясо'),
    (13, 10, 'Чай'),
    (14, 5, 'Вино'),
    (15, 12, 'Рыба'),
    (16, 5, 'Газировка'),
    (17, 12, 'Мясо');