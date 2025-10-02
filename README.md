# 📘 SQL & T-SQL Roadmap (for MSSQL & .NET Ecosystem)

This roadmap helps you **master SQL & T-SQL** step by step using the **80/20 principle**:  
- **20% Theory** → Core concepts & rules you must know  
- **80% Practice** → Real-world queries, database design, and .NET integration  

---

## 🗺️ Roadmap Overview

### 🟢 Beginner (Basics)

| Topic | Why It Matters (80/20 Benefit) | Practice Focus |
|-------|--------------------------------|----------------|
| Database Fundamentals (Tables, Rows, Columns, Keys) | Foundation of all SQL work | Create a simple **Task Manager DB** |
| Data Types (`INT`, `VARCHAR`, `DATE`, `DECIMAL`) | Schema design | Define correct column types |
| `SELECT`, `FROM`, `WHERE` | 80% of queries use these | Query your Task Manager DB |
| `ORDER BY`, `DISTINCT`, `TOP` | Sorting, uniqueness, pagination | Build a paginated query for .NET API |
| `INSERT`, `UPDATE`, `DELETE` | CRUD = backbone of applications | Add & update tasks |
| Primary Key & Foreign Key | Core for relationships | Link Users ↔ Tasks |
| Constraints (`CHECK`, `UNIQUE`, `DEFAULT`, `NOT NULL`) | Data integrity rules | Enforce constraints on tables |

---

### 🟡 Intermediate (Core SQL)

| Topic | Why It Matters (80/20 Benefit) | Practice Focus |
|-------|--------------------------------|----------------|
| `JOINs` (INNER, LEFT, RIGHT, FULL, Self-Join) | 80% of relational queries | Report: tasks per user |
| Aggregates (`COUNT`, `SUM`, `AVG`, `MIN`, `MAX`) + `GROUP BY`, `HAVING` | Summarizing & reporting | Weekly task report per category |
| Subqueries (Scalar, Correlated) | Solves complex queries | Find top 3 active users |
| Views (Simple, Indexed) | Encapsulation & reuse | Create "Active Tasks" view |
| Indexing (Clustered, Non-Clustered) | 80% of performance tuning | Compare queries with & without index |
| Transactions (`BEGIN`, `COMMIT`, `ROLLBACK`) | Data consistency & reliability | Perform safe updates with rollback |

---

### 🔵 Advanced (T-SQL Specific)

| Topic | Why It Matters (80/20 Benefit) | Practice Focus |
|-------|--------------------------------|----------------|
| Stored Procedures | Encapsulate business logic | Build a SP for pagination |
| Functions (Scalar, Table-Valued) | Code reusability | Create date formatting function |
| Triggers (`AFTER`, `INSTEAD OF`) | Automate tasks on data change | Audit log trigger |
| CTE (Recursive & Hierarchical) | Cleaner, readable queries | Task hierarchy tree |
| Window Functions (`ROW_NUMBER`, `RANK`, `LEAD`, `LAG`) | Advanced reporting & analytics | Get top N results |
| Dynamic SQL (`sp_executesql`) | Flexible, dynamic queries | Build a dynamic search filter |
| Error Handling (`TRY...CATCH`) | Reliability & robustness | Handle failed inserts gracefully |

---

### 🔴 Expert (Professional & Enterprise)

| Topic | Why It Matters (80/20 Benefit) | Practice Focus |
|-------|--------------------------------|----------------|
| Performance Tuning (Execution Plans, Statistics) | Saves 80% of query time | Analyze a slow query & optimize |
| Partitioning & Sharding | Scale for big data | Monthly partition tables |
| Temp Tables vs Table Variables | Optimize memory & perf | Compare temp tables vs TVPs |
| Cursors (last resort) | Row-by-row operations | Bulk update demo |
| SQL Server Agent Jobs | Automate recurring tasks | Build daily cleanup job |
| Security (Roles, Permissions, Encryption) | Enterprise must-have | Role-based access control |
| Advanced Features (`MERGE`, `OUTPUT`, JSON, XML) | Modern data handling | Sync two tables with `MERGE` |
| ETL & Integration (SSIS, Bulk Insert) | Data migration | Import CSV into DB |

---

### 🏆 Mastery (Enterprise & Cloud)

| Topic | Why It Matters (80/20 Benefit) | Practice Focus |
|-------|--------------------------------|----------------|
| Query Optimization (Index Hints, Derived vs CTE vs Temp) | Real-world performance tuning | Optimize EF Core query |
| High Availability (Replication, Always On) | Mission-critical uptime | Configure read-only replica |
| Advanced Warehousing (OLAP, Cube, Star Schema) | Enterprise reporting | Build a star schema |
| Stored Procedure Optimization (Parameter sniffing fixes) | Fix real perf. issues | Tune heavy SP |
| Partitioned Views, Filegroups | Handle billions of rows | Archival design |
| Cloud Databases (Azure SQL, AWS RDS) | Modern production | Deploy DB to Azure SQL |

---

## 🔗 .NET Integration (Bridge Layer)

| Area | Concept | Why It Matters |
|------|---------|----------------|
| **ADO.NET** | `SqlConnection`, `SqlCommand`, `SqlDataReader`, `SqlDataAdapter` | Low-level DB access from .NET |
| **Entity Framework Core** | Code-First vs DB-First, LINQ → SQL, Migrations | ORM for modern .NET apps |
| **Stored Procedures + EF** | Mapping SP results | Blend SQL & EF logic |
| **Transactions** | `TransactionScope` in .NET | Reliable multi-queries |
| **Best Practices** | Parameterized queries, Caching | Prevent SQL injection & improve perf |

✅ Practice: Connect your **Task Manager DB** to a **.NET 9 Web API** using EF Core.

---

## ⚡ 80/20 Rule in SQL Learning

- Master **SELECT, JOINs, GROUP BY, Aggregates, and Indexing** → covers **80% of daily SQL work**.  
- Learn **Stored Procedures, Functions, CTEs, and Performance Tuning** → gives you the **professional edge**.  

---

🔥 With this roadmap, you can go **from zero → enterprise-level SQL & T-SQL skills**, fully aligned with the **.NET ecosystem**.  
