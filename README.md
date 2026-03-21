# MySQL — 30-Day Learning Roadmap

> A structured self-study log tracking daily progress from SQL basics to production-ready MySQL skills.

---

## Progress tracker

| Week | Focus | Status |
|------|-------|--------|
| Week 1 (Days 1–7) | Foundations | 🔄 In progress |
| Week 2 (Days 8–14) | Querying | ⬜ Not started |
| Week 3 (Days 15–21) | Design & Performance | ⬜ Not started |
| Week 4 (Days 22–30) | Advanced Topics | ⬜ Not started |

---

## Week 1 · Foundations

- [x] Day 01 — MySQL intro & setup · Install, connect via CLI, GUI tools
- [x] Day 02 — Databases & tables · CREATE, DROP, ALTER, DESCRIBE
- [ ] Day 03 — Data types · INT, VARCHAR, DATE, DECIMAL, TINYINT
- [ ] Day 04 — INSERT & basic SELECT · CRUD fundamentals, column aliases
- [ ] Day 05 — WHERE & filtering · Operators, LIKE, IN, NULL checks
- [ ] Day 06 — UPDATE & DELETE · Modifying records, safe update mode
- [ ] Day 07 — Week 1 mini-project · Build a 3-table schema, insert sample data

## Week 2 · Querying

- [ ] Day 08 — ORDER BY & LIMIT · Sorting, pagination
- [ ] Day 09 — Aggregate functions · COUNT, SUM, AVG, MIN, MAX
- [ ] Day 10 — GROUP BY & HAVING · Grouping data, ROLLUP
- [ ] Day 11 — JOIN fundamentals · INNER, LEFT, RIGHT JOIN
- [ ] Day 12 — Advanced JOINs · SELF, CROSS, multi-table joins
- [ ] Day 13 — Subqueries · Nested SELECTs, EXISTS, correlated subqueries
- [ ] Day 14 — Week 2 challenge · Complex query practice, EXPLAIN basics

## Week 3 · Design & Performance

- [ ] Day 15 — Keys & constraints · PK, FK, UNIQUE, CHECK, DEFAULT
- [ ] Day 16 — Normalization · 1NF → 3NF, ER diagrams
- [ ] Day 17 — Indexes · B-Tree, composite, FULLTEXT
- [ ] Day 18 — EXPLAIN & query tuning · Reading query plans, fixing full scans
- [ ] Day 19 — Transactions & ACID · COMMIT, ROLLBACK, isolation levels
- [ ] Day 20 — Stored procedures · CREATE PROCEDURE, IN/OUT params
- [ ] Day 21 — Triggers & events · BEFORE/AFTER triggers, scheduled events

## Week 4 · Advanced Topics

- [ ] Day 22 — Views · CREATE VIEW, updatable views
- [ ] Day 23 — Window functions · RANK, ROW_NUMBER, LAG, LEAD
- [ ] Day 24 — CTEs · WITH clause, recursive CTEs
- [ ] Day 25 — JSON in MySQL · JSON column type, JSON_EXTRACT
- [ ] Day 26 — Users & security · GRANT, REVOKE, roles, SSL
- [ ] Day 27 — Backup & restore · mysqldump, point-in-time recovery
- [ ] Day 28 — Replication basics · Primary–replica, GTID
- [ ] Day 29 — Connection pooling & ORM · HikariCP, mysql2, SQLAlchemy
- [ ] Day 30 — Capstone project · End-to-end 5-table schema with indexes

---

## Repo structure

```
mysql-30-days/
├── README.md
├── week1-foundations/
│   ├── day01-setup/
│   │   ├── notes.md
│   │   └── practice.sql
│   ├── day02-databases/
│   │   ├── notes.md
│   │   └── practice.sql
│   └── ...
├── week2-querying/
├── week3-design-performance/
├── week4-advanced/
└── capstone/
    ├── schema.sql
    ├── seed.sql
    ├── queries.sql
    └── notes.md
```

Each day folder contains:
- `practice.sql` — all SQL written that day, with inline comments
- `notes.md` — key concepts, mistakes made, things to revisit

---

## Notes template

Copy this into each day's `notes.md`:

```markdown
# Day XX — Topic name

**Date:** YYYY-MM-DD  
**Time spent:** ~X hours

## What I learned
- 

## Commands practised
- 

## Mistakes / gotchas
- 

## Questions to revisit
- 
```

---

## Capstone project (Day 30)

> Goal: demonstrate a production-style normalized schema with indexes, realistic data, and well-written queries.

**Schema:** 5 related tables (to be designed on Day 16 after normalization)  
**Data:** 500+ rows of realistic seed data  
**Queries:** 10 production-style SELECT queries  
**Indexes:** at least 3 custom indexes verified with EXPLAIN  
**Docs:** schema diagram + query decision notes

---

## Tools used

| Tool | Purpose |
|------|---------|
| MySQL 8.x | Database server |
| DBeaver | GUI client |
| MySQL CLI | Terminal practice |
| VS Code | Editing .sql files |

---

## Resources

- [MySQL 8.0 Reference Manual](https://dev.mysql.com/doc/refman/8.0/en/)
- [SQLZoo](https://sqlzoo.net/) — additional query practice
- [Use The Index, Luke](https://use-the-index-luke.com/) — indexing deep dive

---

*Started: <!-- add start date --> · Target completion: <!-- add end date -->*
