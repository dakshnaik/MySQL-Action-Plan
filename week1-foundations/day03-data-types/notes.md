# Day 03 — Data types deep dive

**Date:** 2025-03-23
**Time spent:** ~1 hour

## What I learned
- Choosing the wrong data type causes real problems — FLOAT for money causes
  rounding errors, VARCHAR where CHAR fits wastes query time
- DECIMAL(p,s) is the only correct type for money — p = total digits, s = decimal places
- CHAR is fixed-length (always stores n bytes) — best for codes like "IN", "US", OTPs
- VARCHAR is variable-length — stores only actual length used, ideal for names and emails
- TEXT cannot have a DEFAULT value and cannot be fully indexed
- TIMESTAMP stores UTC internally and converts to session timezone on read
- DATETIME stores as-is with no timezone conversion — use for appointments
- TIMESTAMP has a 2038 overflow limit — use DATETIME for far-future dates
- ENUM stores one value from a predefined list — efficient but ALTER TABLE needed to add values
- BOOLEAN is just an alias for TINYINT(1) in MySQL — no native boolean type
- Never store files (images, PDFs) as BLOB — store file path as VARCHAR instead

## Type decision rules (quick reference)
| Use case | Correct type |
|----------|-------------|
| Money / price | DECIMAL(10,2) |
| Primary key / count | INT or BIGINT |
| Boolean flag | TINYINT(1) |
| Fixed-length code | CHAR(n) |
| Name, email, title | VARCHAR(255) |
| Long article body | TEXT or MEDIUMTEXT |
| Calendar date only | DATE |
| Date + time (no TZ) | DATETIME |
| Auto audit timestamp | TIMESTAMP DEFAULT CURRENT_TIMESTAMP |
| Status from fixed list | ENUM('a','b','c') |
| Country code | CHAR(2) |
| Percentage / rate | DECIMAL(5,4) |

## Mistakes / gotchas
- FLOAT and DOUBLE are approximate — 0.1 + 0.2 = 0.30000000000000004
- TEXT columns cannot have DEFAULT values — will throw an error
- ENUM requires ALTER TABLE to add new values — avoid for frequently changing lists
- TIMESTAMP range ends at 2038-01-19 — use DATETIME for dates beyond that

## Questions to revisit
- What is the performance difference between CHAR and VARCHAR on large tables?
- When would you use JSON type vs a separate table?
- What is prefix indexing on TEXT columns?