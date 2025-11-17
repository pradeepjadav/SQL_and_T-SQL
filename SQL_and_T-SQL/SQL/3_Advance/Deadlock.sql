-- Theory
-------------------------------------------------------------
/*
    A deadlock occurs when two transactions block each other permanently
    because each is holding a lock on a resource that the other transaction needs.

    It creates a circular wait:
    Tx1 waits for Tx2 → Tx2 waits for Tx1 → both cannot continue.

    SQL Server detects this automatically and chooses one transaction as a
    "deadlock victim" and rolls it back so the other can continue.
*/

-- Why Needed - Why It Matters in Real World
-------------------------------------------------------------
/*
    1. Prevents the system from freezing due to infinite waiting.
    2. Protects data consistency by avoiding incomplete updates.
    3. Ensures high performance under heavy concurrent usage.
    4. Automatically resolves locked states without manual intervention.
    5. Critical for banking, e-commerce, and enterprise systems with many users.
*/

-- Practice and Examples
-------------------------------------------------------------
/*
    Example Scenario:
    Transaction 1 locks Row A, then tries to lock Row B.
    Transaction 2 locks Row B, then tries to lock Row A.
    This forms a circular wait → Deadlock.
*/

    -- Window 1
    BEGIN TRAN;
    UPDATE Accounts SET Balance = Balance - 100 WHERE AccountId = 1;
    WAITFOR DELAY '00:00:05';
    UPDATE Accounts SET Balance = Balance + 100 WHERE AccountId = 2;
    COMMIT;

    -- Window 2
    BEGIN TRAN;
    UPDATE Accounts SET Balance = Balance - 50 WHERE AccountId = 2;
    WAITFOR DELAY '00:00:05';
    UPDATE Accounts SET Balance = Balance + 50 WHERE AccountId = 1;
    COMMIT;

-- How to Detect Deadlocks
-------------------------------------------------------------
/*
    Method 1: Check SQL Error Log  
      xp_readerrorlog: shows deadlock entries.

    Method 2: SQL Profiler  
      Use: Deadlock graph, Deadlock chain.

    Method 3: Extended Events (Recommended)
      Capture xml_deadlock_report.

    Method 4: System Health Session
      Built-in, always running, contains deadlock graph.
*/

    -- Detect Using System Health Session
    SELECT XEventData.value('(data/value)[1]', 'varchar(max)') AS DeadlockGraph
    FROM (
        SELECT CAST(event_data AS XML) AS XEventData
        FROM sys.fn_xe_file_target_read_file('system_health*.xel', NULL, NULL, NULL)
        WHERE XEventData.value('(event/@name)[1]', 'varchar(100)') = 'xml_deadlock_report'
    ) AS t;

-- Best Practices to Prevent Deadlocks
-------------------------------------------------------------
/*
    1. Access tables in a consistent order (A → B everywhere).
    2. Keep transactions short—do not hold locks for long.
    3. Use proper indexing to avoid table scans.
    4. Avoid locking hints like TABLOCK unless needed.
    5. Enable row versioning (READ_COMMITTED_SNAPSHOT).
    6. Retry logic using TRY/CATCH for error 1205.
    7. Avoid long waits inside transactions (e.g., user inputs).
*/

-- Interviwe Q&A
-------------------------------------------------------------
/*
    Q1: What is a deadlock?
    A deadlock is a situation where two transactions wait for each other’s
    locked resources, creating a circular blocking. SQL Server kills one
    transaction (victim) to resolve it.

    Q2: Why do deadlocks happen?
    Due to long transactions, inconsistent table access order, missing indexes,
    or heavy concurrent updates.

    Q3: How does SQL Server resolve a deadlock?
    SQL Server detects the circular wait and rolls back one transaction
    (deadlock victim).

    Q4: How do you prevent deadlocks?
    Use consistent lock order, short transactions, indexing, row versioning,
    and retry logic.

    Q5: How do you detect deadlocks?
    Using Extended Events, SQL Profiler Deadlock Graph, system_health session,
    or SQL error log.
*/

