# Day 01 — MySQL intro & setup

**Date:** 2025-03-22
**Time spent:** ~1 hour

## What I learned
- MySQL follows a client-server model — the server (mysqld) runs in the background,
  the client (CLI or GUI) connects to it over TCP port 3306
- MySQL is owned by Oracle; MariaDB is its open-source fork; PostgreSQL is a separate product
- InnoDB is the default storage engine — supports transactions and foreign keys
- The root account is MySQL's superuser — never use it for app connections
- utf8mb4 is the correct charset for full Unicode support including emojis

## Commands practised
- `mysql --version` — verify installation
- `mysql -u root -p` — connect as root user
- `SHOW DATABASES;` — list all databases
- `CREATE DATABASE practice_db;` — create a new database
- `USE practice_db;` — switch to a database
- `SELECT DATABASE();` — confirm active database
- `EXIT;` — close the MySQL prompt

## Tools set up
- MySQL 8.x Community Server installed
- DBeaver connected to localhost:3306
- Git and VS Code installed
- mysql-30-days GitHub repo created and pushed

## Mistakes / gotchas
- Git Bash must be reopened after PATH changes for new commands to work
- Always run `cd mysql-30-days` when opening a fresh Git Bash window

## Questions to revisit
- What is the difference between mysqld and mysql processes?
- When would you change the default port 3306?