SET foreign_key_checks = 0;
DROP TABLE IF EXISTS brands;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS products;
SET foreign_key_checks = 1;
CREATE TABLE brands (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL
);
INSERT INTO brands (id, name)
VALUES
    (1, 'Mango'),
    (2, 'Love Republic'),
    (3, 'Zarina'),
    (4, 'Imajeans'),
    (5, 'OLBE'),
    (6, 'OPIMU'),
    (7, 'FinFlare'),
    (8, 'Sasha Rozhdestvenskaya'),
    (9, 'Katomi'),
    (10, 'Oodji');
CREATE TABLE categories (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL
);
INSERT INTO categories (id, name)
VALUES
    (1, 'Джинсы'),
    (2, 'Куртки'),
    (3, 'Платья'),
    (4, 'Жилетки'),
    (5, 'Юбки'),
    (6, 'Комплекты'),
    (7, 'Брюки'),
    (8, 'Водолазки'),
    (9, 'Косухи'),
    (10, 'Джеггинсы'),
    (11, 'Плащи'),
    (12, 'Леггинсы');
CREATE TABLE products (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    brand INTEGER NULL,
    category INTEGER NULL,
    count INTEGER NULL,
    price INTEGER NULL,
    sizes SET('32','34','36','38','40','42','44','46','48','50','52','M','L','S','XL','XS','2XL','4XL') NULL
);
INSERT INTO products (id, name, brand, category, count, price, sizes)
VALUES
    (1, 'Джинсы Mango Lonny 2', 1, 1, 3, 2990, '34,36,38,42'),
    (2, 'Куртка Magno Nico 2', 1, 2, 2, 4999, 'S,M,L'),
    (3, 'Платье Love Republic', 2, 3, 7, 3699, '40,46,48'),
    (4, 'Джинсы Mango Kim2', 1, 1, 3, 2499, '34,36,38,40'),
    (5, 'Жилет Zarina', 3, 4, 7, 2519, '42,46,50,52'),
    (6, 'Юбка Mango Park', 1, 5, 2, 3999, '34,36,38,40'),
    (7, 'Комплект Mango (джинсы Lonny 2 и косуха)', 1, 6, 4, 11900, '36,38,M,L,S'),
    (8, 'Джинсы Imajeans', 4, 1, 6, 1842, '34,36,38,42'),
    (9, 'Брюки OLBE', 5, 7, 5, 2898, '44,46,48'),
    (10, 'Джинсы Mango Jane2', 1, 1, 4, 1999, '32,34,40'),
    (11, 'Водолазка OPIMU', 6, 8, 12, 1527, 'M,XL,L,S'),
    (12, 'Косуха Mango', 1, 9, 4, 9990, 'M,L,S'),
    (13, 'Джинсы Uptown2 (Mango)', 1, 1, 7, 3499, '34,36,38,40,42'),
    (14, 'Жилет FinFlare', 7, 4, 3, 6999, 'M,L,XL,2XL'),
    (15, 'Джинсы Mango Soho2', 1, 1, 0, 1999, '34,36,38'),
    (16, 'Джеггинсы Sasha Rozhdestvenskaya', 8, 10, 5, 1691, '42,46,48,50'),
    (17, 'Плащ Mango SHERLOCK', 1, 11, 1, 6499, 'XS,S,M,L'),
    (18, 'Юбка Katomi', 9, 5, 8, 3199, '34,40,42'),
    (19, 'Джинсы Mango Noa2', 1, 1, 2, 2499, '32,34,36,38,40,42,44'),
    (20, 'Леггинсы Oodji', 10, 12, 0, 349, 'M,L,S');