# SQL Database Drills: Financial Ledger Simulation

A collection of PostgreSQL scripts and architecture drills focused on building a secure, 3NF-compliant financial ledger.

These scripts serve as the foundational database layer for **PayShap Lite**, a backend payment simulator, focusing heavily on data integrity, ACID compliance, and concurrency control.

## 🧠 Core Database Concepts Demonstrated

This repository moves beyond basic CRUD operations to tackle real-world financial data constraints:

*   **Architecture & Normalization (3NF):** Designed a relational schema separating accounts, natural keys (emails/phones), and ledger entries to eliminate data redundancy.
*   **Key Management:** Implemented UUIDs (v4) for secure surrogate primary keys while enforcing unique constraints on natural keys.
*   **Concurrency Control (Row Locking):** Mitigated classic "Read-Modify-Write" race conditions (double-spend vulnerabilities) using explicit `SELECT ... FOR UPDATE` row-level locks.
*   **ACID Transactions:** Manually orchestrated `BEGIN`, `COMMIT`, and `ROLLBACK` boundaries to guarantee ledger integrity during multi-step fund transfers.
*   **Query Optimization:** Utilized `EXPLAIN ANALYZE` to diagnose slow sequential scans and implemented B-Tree indexing on highly queried columns to force optimized Index Scans.

## 📂 Repository Structure

*   `seed_data.sql`: Contains the DDL (`CREATE TABLE`) scripts with strict typing and constraints, plus DML (`INSERT`) scripts to populate the ledger with test users and transactions.
*   `acid_transactions.sql`: Contains the explicit transaction blocks demonstrating row-locking and state rollbacks.

## 🛠️ Tech Stack
*   **Engine:** PostgreSQL
*   **Focus:** Data Integrity, Transaction Isolation, Query Tuning