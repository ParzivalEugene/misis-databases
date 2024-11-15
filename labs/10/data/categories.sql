DROP TABLE if EXISTS categories;
CREATE TABLE categories (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL
);
INSERT INTO categories (id, name)
VALUES
    (1, 'Шоколад'),
    (2, 'Молочные продукты'),
    (3, 'Фрукты и овощи'),
    (4, 'Крупы'),
    (5, 'Напитки'),
    (6, 'Посуда'),
    (7, 'Шампуни'),
    (8, 'Хлеб'),
    (9, 'Консервы'),
    (10, 'Чай и кофе'),
    (11, 'Алкоголь'),
    (12, 'Колбасы'),
    (13, 'Полуфабрикаты'),
    (14, 'Растительное масло'),
    (15, 'Рыба'),
    (16, 'Товары гигиены'),
    (17, 'Мясо');