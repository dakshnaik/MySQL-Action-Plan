# Day 02 — Databases & tables

**Date:** 2025-03-22
**Time spent:** ~1 hour

## What I learned
- After CREATE DATABASE you must run USE dbname — MySQL does not switch automatically
- Always use utf8mb4 charset when creating databases for real projects
- CREATE TABLE defines column names, data types, and constraints in one statement
- AUTO_INCREMENT assigns the next integer automatically — no need to supply id manually
- DECIMAL(8,2) is correct for money — FLOAT causes rounding errors
- TINYINT(1) is MySQL's boolean — 1 = true, 0 = false
- Adding created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP to every table is best practice
- TRUNCATE removes all rows but keeps the table; DROP removes the table entirely
- DELETE is transactional (can ROLLBACK); TRUNCATE is not
- DESCRIBE tablename shows column structure; SHOW CREATE TABLE shows full definition

## Commands practised
- `CREATE DATABASE bookstore CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;`
- `USE bookstore;`
- `SHOW DATABASES;`
- `CREATE TABLE books (...);`
- `ALTER TABLE books ADD COLUMN genre VARCHAR(100);`
- `ALTER TABLE books MODIFY COLUMN title VARCHAR(500);`
- `ALTER TABLE books DROP COLUMN genre;`
- `DESCRIBE books;`
- `SHOW CREATE TABLE books;`
- `TRUNCATE TABLE books;`
- `DROP TABLE IF EXISTS books;`
- `DROP DATABASE IF EXISTS bookstore;`

## Mistakes / gotchas
- Forgot USE after CREATE DATABASE the first time — got "No database selected" error
- TRUNCATE resets AUTO_INCREMENT counter back to 1 — important to remember
- Cannot DROP a table that another table references with a FOREIGN KEY

## Questions to revisit
- What happens to existing rows when you MODIFY a column to a smaller type?
- When does ALTER TABLE cause a table lock in production?