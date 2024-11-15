DROP TABLE IF EXISTS country_of_origin;
CREATE TABLE country_of_origin (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL
);
INSERT INTO country_of_origin (id, name)
VALUES
    (1, 'Россия'),
    (2, 'Белоруссия'),
    (3, 'Казахстан'),
    (4, 'Турция'),
    (5, 'Китай'),
    (6, 'Узбекистан');
    