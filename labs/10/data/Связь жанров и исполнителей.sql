SET foreign_key_checks = 0;
DROP TABLE IF EXISTS genres;
DROP TABLE IF EXISTS artists;
SET foreign_key_checks = 1;
CREATE TABLE genres (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL
);
CREATE TABLE artists (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    is_group BOOLEAN NULL
);