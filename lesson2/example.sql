CREATE DATABASE IF NOT EXISTS example CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE example;
CREATE TABLE IF NOT EXISTS users (`id` INT NOT NULL AUTO_INCREMENT, `name` VARCHAR(50) NOT NULL, PRIMARY KEY(id));
INSERT INTO users (`name`) VALUES ('Александр');
INSERT INTO users (`name`) VALUES ('Алексей');
INSERT INTO users (`name`) VALUES ('Евгений');
INSERT INTO users (`name`) VALUES ('Николай');