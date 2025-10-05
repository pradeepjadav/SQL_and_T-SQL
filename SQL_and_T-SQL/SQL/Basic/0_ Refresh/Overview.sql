 -- Theory
/*

🧠 What is SQL?

SQL (Structured Query Language) is a standard language used to interact with relational databases — to store, retrieve, and manipulate data.

In the .NET ecosystem, we mainly use Microsoft SQL Server (MSSQL), and the SQL flavor used here is called T-SQL (Transact-SQL) — Microsoft’s extension of SQL.

T-SQL (Transact-SQL):
	T-SQL is Microsoft’s extension of SQL, used in SQL Server (MSSQL).
	It includes all SQL features plus additional ones like:

		- Variables and control flow (IF, WHILE)

		- Error handling (TRY...CATCH)

		- Built-in functions (GETDATE(), LEN(), etc.)

		- Stored procedures and triggers

	T-SQL is what we use most in .NET and enterprise applications.

Types of Databases:
	
	1. Relational Databases (SQL)

		Definition:
			Data is stored in tables (rows and columns).
			Each table has a schema (structure), and relationships exist between tables using primary and foreign keys.

		Examples:
			Microsoft SQL Server, MySQL, PostgreSQL, Oracle, SQLite

		Best For:
			Structured data

			Systems that need ACID properties (Atomicity, Consistency, Isolation, Durability)

			Applications that require strong consistency (like banking, ERP, CRM)

		Advantages:
			Strong relationships between data

			Easier to maintain consistency

			Supported by SQL — a powerful query language

			Ideal for most enterprise applications

		Used in .NET apps:
			Microsoft SQL Server (MSSQL) — directly integrates with Entity Framework Core, ADO.NET, and Dapper.

	2. Non-Relational Databases (NoSQL)

		Definition:
			Data is stored in non-tabular format — could be documents, key-value pairs, graphs, or wide columns.
			Schema is flexible — different records can have different fields.

		Examples:
			MongoDB, Azure CosmosDB, Cassandra, Redis, CouchDB

		Best For:
			Unstructured or semi-structured data

			High scalability and performance

			Real-time analytics, IoT, social apps, etc.

		Advantages:

			Schema-less — faster development

			Horizontal scalability (easy to add servers)

			Handles big data and JSON-based structures

		Used in .NET apps:
			Often for caching or logging with MongoDB or CosmosDB, while main data remains in MSSQL.


SQL vs NoSQL:

	| Feature        | SQL (Relational)                        | NoSQL (Non-Relational)                         |
	| -------------- | --------------------------------------- | ---------------------------------------------- |
	| Data Storage   | Tables (Rows & Columns)                 | Documents, Key-Value, Graph, or Column stores  |
	| Schema         | Fixed (Predefined structure)            | Dynamic (Flexible schema)                      |
	| Relationships  | Supports relationships (JOINs)          | Generally not relational                       |
	| Query Language | SQL (Structured Query Language)         | Varies (e.g., MongoDB Query Language, GraphQL) |
	| Example        | Microsoft SQL Server, MySQL, PostgreSQL | MongoDB, Cassandra, Firebase                   |

💡 In .NET applications, SQL Server (MSSQL) is most common for enterprise apps because it integrates seamlessly with Entity Framework, ADO.NET, and LINQ.

Types of SQL Commands:

	| Category | Full Form                    | Purpose                          | Examples                              |
	| -------- | ---------------------------- | -------------------------------- | ------------------------------------- |
	| **DDL**  | Data Definition Language     | Defines database structure       | `CREATE`, `ALTER`, `DROP`, `TRUNCATE` |
	| **DML**  | Data Manipulation Language   | Works with data inside tables    | `INSERT`, `UPDATE`, `DELETE`          |
	| **DQL**  | Data Query Language          | Retrieves data from the database | `SELECT`                              |
	| **DCL**  | Data Control Language        | Controls access/permissions      | `GRANT`, `REVOKE`                     |
	| **TCL**  | Transaction Control Language | Manages transactions             | `COMMIT`, `ROLLBACK`, `SAVEPOINT`     |

💡 In practice, 80% of your daily work in .NET + SQL involves DML and DQL (data manipulation and querying).

*/

 -- Why Needed - Why It Matters in Real World
/*

- Every .NET web or desktop app connects to a database.

- SQL is how your application talks to the database to perform operations like:

	Fetching user data (SELECT)

	Updating records (UPDATE)

	Inserting new data (INSERT)

	Removing outdated data (DELETE)

- In enterprise systems, most business logic lives inside stored procedures (T-SQL).

- As a developer, you’ll use SQL daily with Entity Framework Core, ADO.NET, or LINQ to SQL.

80/20 Rule:
	Master SELECT, JOIN, GROUP BY, and WHERE — they power 80% of real-world SQL queries.

🔹 Real-World Context for .NET Developers:

	Backend Integration: SQL Server is often used with ASP.NET Core APIs for data storage and access.

	ORM Use: Entity Framework Core (EF Core) generates T-SQL queries automatically — understanding SQL helps you optimize and debug EF queries.

	Performance: Knowing indexes, joins, and query plans helps in reducing latency and improving performance in production APIs.

	Interviews: SQL & T-SQL questions are a core part of .NET developer interviews (joins, subqueries, CTEs, window functions, stored procedures, triggers).

*/

-- Pratice and Examples

--1. DDL:
--	Create Database:

		CREATE DATABASE CompanyDBOne;
		GO

		USE CompanyDB;  -- Select Database in IDE
		GO

	--Create a Table:

		CREATE TABLE Employees (
			EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
			FirstName VARCHAR(50),
			LastName VARCHAR(50),
			Department VARCHAR(50),
			Salary DECIMAL(10,2)
		);

--2. DML:
--	Insert Data:

		INSERT INTO Employees (FirstName, LastName, Department, Salary)
		VALUES ('John', 'Doe', 'IT', 60000),
			   ('Mary', 'Smith', 'HR', 55000);

	--Update Data:

		UPDATE Employees
		SET Salary = 62000
		WHERE Department = 'IT';

	--Delete Data:
		
		DELETE FROM Employees
		WHERE Department = 'HR';


--3. DQL:
--	Select Data:

		SELECT * FROM Enployees;

--4. TCL:
	
	BEGIN TRANSACTION;
		UPDATE Employees SET Salary = Salary + 5000 WHERE Department = 'IT';
	COMMIT TRANSACTION;


 -- Interviwe Q&A
/*

Q1. What is SQL?
Answer:
	SQL (Structured Query Language) is a language used to store, retrieve, and manage data in a relational database.
	It allows developers to create tables, insert data, and query information using commands like SELECT, INSERT, UPDATE, and DELETE.

Q2. What is T-SQL?
Answer:
	T-SQL (Transact-SQL) is Microsoft’s extension of SQL used in SQL Server.
	It adds extra features like:

		Variables (DECLARE)

		Control flow (IF, WHILE)

		Error handling (TRY...CATCH)

		Functions and Stored Procedures

		Used in .NET apps to implement business logic inside the database.

Q3. What’s the difference between SQL and T-SQL?

	| Feature    | SQL                       | T-SQL                                                        |
	| ---------- | ------------------------- | ------------------------------------------------------------ |
	| Definition | Standard query language   | Microsoft extension of SQL                                   |
	| Platform   | Works across databases    | Only in Microsoft SQL Server                                 |
	| Features   | Data operations only      | Adds programming features (variables, error handling, loops) |
	| Example    | `SELECT * FROM Employees` | `DECLARE @x INT; SELECT @x = COUNT(*) FROM Employees`        |

Q4. What are the main types of SQL commands?
Answer:
	There are five categories of SQL commands:

	| Type                                   | Description                           | Example                               |
	| -------------------------------------- | ------------------------------------- | ------------------------------------- |
	| **DDL (Data Definition Language)**     | Defines structure of database objects | `CREATE`, `ALTER`, `DROP`, `TRUNCATE` |
	| **DML (Data Manipulation Language)**   | Manages data in tables                | `INSERT`, `UPDATE`, `DELETE`          |
	| **DQL (Data Query Language)**          | Retrieves data                        | `SELECT`                              |
	| **DCL (Data Control Language)**        | Manages user access                   | `GRANT`, `REVOKE`                     |
	| **TCL (Transaction Control Language)** | Manages transactions                  | `BEGIN`, `COMMIT`, `ROLLBACK`         |

Q5. What is the difference between DDL and DML?
Answer:

	DDL: Changes the structure of the database (like creating or modifying tables).

	DML: Modifies the data inside those tables.

	Example: 
		-- DDL
		CREATE TABLE Students (Id INT, Name VARCHAR(50));

		-- DML
		INSERT INTO Students VALUES (1, 'Pradeep'); 

Q6. What is the most commonly used SQL command in real projects?
Answer:
	SELECT — because 80% of all database queries involve reading and filtering data.

Q7. What are relational and non-relational databases?
Answer:
	Relational: Data stored in tables, linked with primary/foreign keys. (e.g., SQL Server)

	Non-relational: Data stored as JSON, key-value, or documents (e.g., MongoDB).

Q8. How does a .NET application connect to SQL Server?
Answer:
	Using ADO.NET, Entity Framework Core, or Dapper.
	These frameworks use a connection string to communicate with SQL Server and execute queries or stored procedures.

Q9. What is a transaction in SQL?
Answer:
	A transaction is a group of SQL operations that are executed together.
	If any step fails, all changes are rolled back to maintain data integrity.

	Example:

		BEGIN TRANSACTION;
			UPDATE Accounts SET Balance = Balance - 100 WHERE AccountID = 1;
			UPDATE Accounts SET Balance = Balance + 100 WHERE AccountID = 2;
		COMMIT TRANSACTION;

Q10. What is normalization?
Answer:
	Normalization is the process of organizing data to reduce redundancy and improve consistency.
	It divides large tables into smaller, related ones.

	Example: Splitting Employee and Department tables to store data only once.

*/