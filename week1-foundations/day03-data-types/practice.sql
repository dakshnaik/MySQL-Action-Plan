-- Day 03: Data types deep dive
-- Date: 2025-03-23

-- ─────────────────────────────────────────
-- NUMERIC TYPES
-- ─────────────────────────────────────────

CREATE DATABASE types_practice CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE types_practice;

CREATE TABLE numeric_examples (
  id            INT AUTO_INCREMENT PRIMARY KEY,
  age           TINYINT UNSIGNED,          -- 0 to 255
  year_joined   SMALLINT,                  -- up to 32,767
  population    INT,                       -- up to ~2.1 billion
  page_views    BIGINT,                    -- up to ~9.2 quintillion
  price         DECIMAL(10,2),             -- exact: 99999999.99
  tax_rate      DECIMAL(5,4),              -- e.g. 0.1825 for 18.25%
  latitude      FLOAT,                     -- approximate, ok for coordinates
  is_active     TINYINT(1) DEFAULT 1       -- boolean: 1=true, 0=false
);

-- ─────────────────────────────────────────
-- STRING TYPES
-- ─────────────────────────────────────────

CREATE TABLE string_examples (
  id            INT AUTO_INCREMENT PRIMARY KEY,
  country_code  CHAR(2),                   -- always exactly 2 chars
  gender        CHAR(1),                   -- 'M', 'F', 'O'
  full_name     VARCHAR(100) NOT NULL,     -- variable, up to 100 chars
  email         VARCHAR(255) NOT NULL,     -- 255 covers all valid emails
  bio           TEXT,                      -- up to 64 KB, no DEFAULT allowed
  article_body  MEDIUMTEXT,                -- up to 16 MB
  status        ENUM('active','inactive','pending') DEFAULT 'active'
);

-- ─────────────────────────────────────────
-- DATE & TIME TYPES
-- ─────────────────────────────────────────

CREATE TABLE datetime_examples (
  id             INT AUTO_INCREMENT PRIMARY KEY,
  date_of_birth  DATE,                     -- '1995-08-15' — no time
  shift_start    TIME,                     -- '09:00:00'
  appointment_at DATETIME,                 -- '2024-06-15 14:30:00' — no TZ
  created_at     TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at     TIMESTAMP DEFAULT CURRENT_TIMESTAMP
                 ON UPDATE CURRENT_TIMESTAMP,
  founded_year   YEAR                      -- '2024'
);

-- ─────────────────────────────────────────
-- REAL-WORLD TABLE USING CORRECT TYPES
-- (a products table for an e-commerce app)
-- ─────────────────────────────────────────

CREATE TABLE products (
  id            INT AUTO_INCREMENT PRIMARY KEY,
  name          VARCHAR(255) NOT NULL,
  description   TEXT,
  price         DECIMAL(10,2) NOT NULL,
  stock_count   INT DEFAULT 0,
  category      ENUM('electronics','clothing','books','food') NOT NULL,
  country_origin CHAR(2),
  is_available  TINYINT(1) DEFAULT 1,
  created_at    TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at    TIMESTAMP DEFAULT CURRENT_TIMESTAMP
                ON UPDATE CURRENT_TIMESTAMP
);

-- Verify structure
DESCRIBE products;

-- Clean up
DROP DATABASE IF EXISTS types_practice;