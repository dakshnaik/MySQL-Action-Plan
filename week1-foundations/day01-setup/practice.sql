-- Day 01: MySQL intro & setup
-- Date: 2025-03-22

-- Check MySQL version
-- mysql --version  (run in terminal, not inside MySQL)

-- Connect to MySQL
-- mysql -u root -p

-- List all databases (run inside MySQL prompt)
SHOW DATABASES;

-- Create a practice database
CREATE DATABASE practice_db;

-- Switch to it
USE practice_db;

-- Confirm which database is active
SELECT DATABASE();

-- Exit MySQL prompt
-- EXIT;