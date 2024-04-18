-- Active: 1712569364257@@127.0.0.1@3306@dbnews
CREATE DATABASE dbNews CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE dbNews;

CREATE TABLE category (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE news (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_categories INT,  -- Khóa ngoại tham chiếu bảng categories
    id_users INT,       -- Khóa ngoại tham chiếu bảng users
    name TEXT,
   ` description` TEXT,
    detail TEXT,        -- Thay đổi thành TEXT cho nội dung dài hơn
    image TEXT,
        
);

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255),
   ` password` VARCHAR(255),
    fullname VARCHAR(255)
);

ALTER TABLE news
ADD FOREIGN KEY (id_categories) REFERENCES categories(id),
ADD FOREIGN KEY (id_users) REFERENCES users(id);
INSERT INTO category (`name`) value ('Xã Hội' );

SELECT * FROM category WHERE ID = 2 ;
SELECT * FROM category;