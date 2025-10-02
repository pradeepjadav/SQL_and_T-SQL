# SQL & T-SQL Roadmap (for MSSQL & .NET Ecosystem)

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

## 🛠 Real-World Development Layer

SQL & T-SQL are not just for queries — they are the backbone of **enterprise applications**.  
Here’s how they fit into real-world development:

| Area | Real-World Application | Example |
|------|-------------------------|---------|
| **Backend APIs** | Efficient queries for REST APIs | Task API fetching filtered results |
| **Business Logic in DB** | Stored Procedures, Triggers, Functions | Auto-calculate invoice totals |
| **Reports & Analytics** | Aggregates, CTEs, Window Functions | Weekly sales reports |
| **Performance Tuning** | Indexing, Execution Plans, Statistics | Optimize slow-running dashboard |
| **Data Migration & ETL** | SSIS, Bulk Insert, Linked Servers | Import legacy data into SQL Server |
| **Security** | Roles, Permissions, Encryption | Role-based access for multi-tenant apps |
| **Cloud Integration** | Azure SQL, AWS RDS | Deploy database to Azure SQL PaaS |
| **CI/CD & DevOps** | SQL scripts in pipelines | Automated DB migrations with EF Core |
| **Auditing & Logging** | Triggers & History tables | Keep track of changes for compliance |

✅ Practice: Take your **Task Manager DB** → Connect it to a **.NET Web API** → Add stored procedures, indexes, and security → Deploy to **Azure SQL**.

---

## 🎯 Interview Preparation (SQL & T-SQL)

When interviewing for **.NET + SQL developer roles**, you’ll face both **theory** and **practical query challenges**.

### 🔑 Core Interview Topics
- **SQL Basics**: `SELECT`, `WHERE`, `JOIN`, `GROUP BY`
- **Advanced SQL**: Window Functions, CTEs, Subqueries
- **T-SQL Features**: Stored Procedures, Functions, Triggers, Error Handling
- **Optimization**: Indexing, Execution Plans, Query Hints
- **Transactions**: ACID properties, Deadlocks, Isolation Levels
- **Real-World Scenarios**: Reporting queries, performance tuning, handling large data
- **.NET Integration**: Using ADO.NET, EF Core, parameterized queries, handling SPs

### ❓ Common Interview Questions
1. Difference between **INNER JOIN** vs **LEFT JOIN**?  
2. How do you find the **second-highest salary** from a table?  
3. Explain **Clustered vs Non-Clustered Index**.  
4. How do you handle **deadlocks** in SQL Server?  
5. Difference between **DELETE, TRUNCATE, DROP**?  
6. When would you use a **CTE vs Subquery**?  
7. Explain **transaction isolation levels** in SQL Server.  
8. How do you debug a **slow query** in SQL Server?  
9. Difference between **Table Variable vs Temp Table**.  
10. How to call a **Stored Procedure** from .NET (ADO.NET / EF Core)?  

### 🧑‍💻 Practical Coding Challenges
- Write a query to get the **top 3 orders per customer** using Window Functions.  
- Find users who have **not logged in during the last 30 days**.  
- Create a query that shows **hierarchical employee → manager → director structure**.  
- Optimize a query that scans millions of rows (using indexes, execution plans).  

✅ Tip: In interviews, they care more about **how you think** (query design, optimization approach) than just raw syntax.

---

## ⚡ 80/20 Rule in SQL Learning

- Master **SELECT, JOINs, GROUP BY, Aggregates, and Indexing** → covers **80% of daily SQL work**.  
- Learn **Stored Procedures, Functions, CTEs, and Performance Tuning** → gives you the **professional edge**.  

---

🔥 With this roadmap, you can go **from zero → enterprise-level SQL & T-SQL skills**, fully aligned with the **.NET ecosystem**.  
