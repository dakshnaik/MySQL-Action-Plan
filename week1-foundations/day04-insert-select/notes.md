# Day 04 — INSERT & basic SELECT

**Date:** 2025-03-23
**Time spent:** ~1 hour

## What I learned
- Always name columns in INSERT — positional inserts break if table structure changes
- Multi-row INSERT is ~10x faster than separate INSERTs — MySQL batches in one transaction
- Omitting a NOT NULL column with no DEFAULT throws an error
- AUTO_INCREMENT never reuses a deleted ID — gaps in id sequence are completely normal
- SELECT * is fine for learning but always name columns in production code
- SELECT DISTINCT removes duplicate values from the result set
- Column aliases using AS make output readable — especially for computed columns
- Arithmetic expressions work directly in SELECT — salary/12 computes monthly salary
- Any arithmetic with NULL returns NULL — e.g. NULL/12 = NULL
- CONCAT joins strings into one column — very useful for reports
- ROUND(value, decimals) controls decimal precision in output
- SELECT without FROM works — SELECT NOW(), SELECT VERSION(), SELECT 1+1

## Commands practised
- `INSERT INTO t (col1, col2) VALUES (v1, v2);` — single row insert
- `INSERT INTO t (col1, col2) VALUES (v1,v2),(v3,v4);` — multi-row insert
- `INSERT IGNORE INTO t (...) VALUES (...);` — skip duplicate key errors
- `SELECT * FROM t;` — all rows, all columns
- `SELECT col1, col2 FROM t;` — specific columns only
- `SELECT DISTINCT col FROM t;` — unique values only
- `SELECT * FROM t LIMIT 3;` — first 3 rows only
- `SELECT COUNT(*) FROM t;` — total row count
- `SELECT col AS alias FROM t;` — rename output column
- `SELECT salary/12 AS monthly FROM t;` — arithmetic expression
- `SELECT CONCAT(first, ' ', last) AS full_name FROM t;` — string join
- `SELECT ROUND(salary/12, 2) AS monthly FROM t;` — rounded result
- `SELECT ROW_COUNT();` — rows affected by last INSERT/UPDATE/DELETE

## Key functions learned
| Function | Purpose | Example |
|----------|---------|---------|
| CONCAT() | Join strings | CONCAT(name, ' - ', dept) |
| UPPER() | Uppercase string | UPPER(name) |
| LOWER() | Lowercase string | LOWER(department) |
| LENGTH() | String length | LENGTH(name) |
| ROUND() | Round decimal | ROUND(salary/12, 2) |
| NOW() | Current datetime | SELECT NOW(); |
| COUNT() | Count rows | SELECT COUNT(*) FROM t; |

## Mistakes / gotchas
- Forgot AS keyword once — MySQL still works without AS but it is bad practice
- COUNT(*) counts all rows including NULLs; COUNT(col) skips NULLs
- SELECT DISTINCT on multiple columns: checks combination of ALL listed columns for uniqueness
- INSERT without column names breaks silently if a new column is added to the table later

## Questions to revisit
- What is the difference between COUNT(*) and COUNT(col)?
- When does INSERT IGNORE actually skip a row?
- What is INSERT ... ON DUPLICATE KEY UPDATE?