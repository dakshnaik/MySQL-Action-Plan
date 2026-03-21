-- Day 02: Databases & tables

CREATE DATABASE bookstore CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE bookstore;

CREATE TABLE books (
  id          INT AUTO_INCREMENT PRIMARY KEY,
  title       VARCHAR(255) NOT NULL,
  author      VARCHAR(150) NOT NULL,
  price       DECIMAL(8,2) DEFAULT 0.00,
  published   DATE,
  in_stock    TINYINT(1) DEFAULT 1,
  created_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DESCRIBE books;
SHOW CREATE TABLE books;
DROP DATABASE IF EXISTS bookstore;