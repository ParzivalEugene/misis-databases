SET
    foreign_key_checks = 0;

DROP TABLE IF EXISTS products;

SET
    foreign_key_checks = 1;

CREATE TABLE
    products (
        id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
        name VARCHAR(100) NOT NULL,
        count SMALLINT UNSIGNED NOT NULL DEFAULT 0,
        price INTEGER UNSIGNED NOT NULL DEFAULT 0,
        sizes SET('32', '34', '36', '38', '40', '42', '44', '46', '48', '50', '52', 'M', 'L', 'S', 'XL', 'XS', '2XL', '4XL') NULL,
        FULLTEXT INDEX name (name)
    );

INSERT INTO
    products (id, name, count, price, sizes)
VALUES
    (1, 'Джинсы Mango Lonny 2', 3, 2990, '34,36,38,42'),
    (2, 'Куртка Magno Nico 2', 2, 4999, 'S,M,L'),
    (3, 'Платье Love Republic', 7, 3999, '40,46,48'),
    (4, 'Джинсы Mango Kim2', 3, 2499, '34,38,40'),
    (5, 'Жилет Zarina', 7, 2519, '42,46,50,52'),
    (6, 'Юбка Mango Park', 2, 3999, '34,36,38,40'),
    (7, 'Комплект Mango (джинсы Lonny 2 и косуха)', 4, 11900, '36,38,M,L,S'),
    (8, 'Джинсы Imajeans', 6, 1842, '34,36,38,42'),
    (9, 'Брюки OLBE', 5, 2898, '44,46,48'),
    (10, 'Джинсы Mango Jane2', 4, 200, '32,34,40'),
    (11, 'Водолазка OPIMU', 12, 1527, 'M,XL,L,S'),
    (12, 'Косуха Mango', 4, 9990, 'M,L,S'),
    (13, 'Джинсы Uptown2 (Mango)', 7, 3499, '34,36,38,40,42'),
    (14, 'Жилет FinFlare', 3, 6999, 'M,L,XL,2XL'),
    (15, 'Джинсы Mango Soho2', 0, 1999, '34,36,38'),
    (16, 'Джеггинсы Sasha Rozhdestvenskaya', 5, 1691, '42,46,48,50'),
    (17, 'Плащ Mango SHERLOCK', 1, 6499, 'XS,S,M,L'),
    (18, 'Юбка Katomi', 8, 3199, '34,40,42'),
    (19, 'Джинсы Mango Noa2', 2, 2499, '32,34,36,38,40,42,44'),
    (20, 'Легинсы Oodji', 0, 349, 'M,L,S');