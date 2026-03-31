-- Day 04: INSERT & basic SELECT
-- Date: 2025-03-23

-- ─────────────────────────────────────────
-- SETUP
-- ─────────────────────────────────────────

CREATE DATABASE day04_practice CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE day04_practice;

CREATE TABLE employees (
  id           INT AUTO_INCREMENT PRIMARY KEY,
  name         VARCHAR(100) NOT NULL,
  department   VARCHAR(50)  NOT NULL,
  salary       DECIMAL(10,2),
  joined_date  DATE,
  created_at   TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ─────────────────────────────────────────
-- INSERT
-- ─────────────────────────────────────────

-- Single row INSERT (always name columns)
INSERT INTO employees (name, department, salary, joined_date)
VALUES ('Priya Sharma', 'Engineering', 85000.00, '2023-06-15');

-- Multi-row INSERT (faster than separate statements)
INSERT INTO employees (name, department, salary, joined_date)
VALUES
  ('Rahul Mehta',  'Finance',     72000.00, '2022-03-01'),
  ('Sneha Patel',  'Engineering', 91000.00, '2021-11-20'),
  ('Arjun Nair',   'Marketing',   65000.00, '2024-01-10'),
  ('Divya Reddy',  'Finance',     78000.00, '2023-09-05');

-- Partial INSERT — omitted columns get NULL or DEFAULT
INSERT INTO employees (name, department)
VALUES ('Karan Singh', 'HR');

-- Check rows affected by last INSERT
SELECT ROW_COUNT();

-- ─────────────────────────────────────────
-- BASIC SELECT
-- ─────────────────────────────────────────

-- All rows, all columns
SELECT * FROM employees;

-- Specific columns only
SELECT name, department, salary FROM employees;

-- Unique department names only
SELECT DISTINCT department FROM employees;

-- First 3 rows only
SELECT * FROM employees LIMIT 3;

-- Total row count
SELECT COUNT(*) FROM employees;

-- Count non-NULL salary values only
SELECT COUNT(salary) AS employees_with_salary FROM employees;

-- ─────────────────────────────────────────
-- ALIASES & EXPRESSIONS
-- ─────────────────────────────────────────

-- Column aliases for readability
SELECT
  name        AS employee_name,
  department  AS dept,
  salary      AS annual_salary
FROM employees;

-- Arithmetic: monthly salary and 10% hike
SELECT
  name,
  salary,
  ROUND(salary / 12, 2)    AS monthly_salary,
  ROUND(salary * 1.10, 2)  AS after_10pct_hike
FROM employees;

-- String functions
SELECT
  UPPER(name)                        AS name_upper,
  LOWER(department)                  AS dept_lower,
  LENGTH(name)                       AS name_length,
  CONCAT(name, ' - ', department)    AS name_dept_label
FROM employees;

-- Quick calculations without a table
SELECT 85000 / 12            AS monthly_calc;
SELECT NOW()                 AS current_datetime;
SELECT VERSION()             AS mysql_version;
SELECT ROUND(3.14159, 2)     AS pi_rounded;

-- ─────────────────────────────────────────
-- CLEANUP
-- ─────────────────────────────────────────

DROP DATABASE IF EXISTS day04_practice;