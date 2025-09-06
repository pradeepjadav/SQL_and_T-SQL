/*
Post-Deployment Script Template							
------

--------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

-- 1. List Tables with Basic Info (Schema + Table Name)
SELECT 
    t.name AS TableName,
    s.name AS SchemaName,
    t.create_date,
    t.modify_date
FROM sys.tables t
JOIN sys.schemas s ON t.schema_id = s.schema_id
ORDER BY s.name, t.name;

-- 2. List Table Columns with Data Types and Nullability
SELECT 
    t.name AS TableName,
    c.name AS ColumnName,
    ty.name AS DataType,
    c.max_length,
    c.is_nullable,
    c.is_identity
FROM sys.columns c
JOIN sys.tables t ON c.object_id = t.object_id
JOIN sys.types ty ON c.user_type_id = ty.user_type_id
ORDER BY t.name, c.column_id;

-- 3. List Indexes on All Tables
SELECT 
    t.name AS TableName,
    ind.name AS IndexName,
    ind.type_desc AS IndexType,
    col.name AS ColumnName,
    ind.is_primary_key,
    ind.is_unique
FROM sys.indexes ind 
INNER JOIN sys.index_columns ic ON ind.object_id = ic.object_id AND ind.index_id = ic.index_id
INNER JOIN sys.columns col ON ic.object_id = col.object_id AND ic.column_id = col.column_id
INNER JOIN sys.tables t ON ind.object_id = t.object_id
WHERE ind.is_hypothetical = 0 AND t.is_ms_shipped = 0
ORDER BY t.name, ind.name;

-- 4. List Table Constraints (Primary Key, Foreign Key, etc.)
SELECT 
    t.name AS TableName,
    kc.name AS ConstraintName,
    kc.type_desc AS ConstraintType,
    c.name AS ColumnName
FROM sys.key_constraints kc
JOIN sys.tables t ON kc.parent_object_id = t.object_id
JOIN sys.index_columns ic ON kc.unique_index_id = ic.index_id AND ic.object_id = t.object_id
JOIN sys.columns c ON ic.column_id = c.column_id AND c.object_id = t.object_id
ORDER BY t.name, kc.name;

-- 5. Find Table Filegroup and Physical File Location
SELECT 
    t.name AS TableName,
    i.name AS IndexName,
    fg.name AS FileGroupName,
    f.physical_name AS PhysicalFile
FROM sys.tables t
JOIN sys.indexes i ON t.object_id = i.object_id
JOIN sys.filegroups fg ON i.data_space_id = fg.data_space_id
JOIN sys.database_files f ON fg.data_space_id = f.data_space_id
WHERE i.index_id <= 1 -- 0 = Heap, 1 = Clustered index
ORDER BY t.name;

-- 6. List Row Counts for Each Table
SELECT 
    s.name AS SchemaName,
    t.name AS TableName,
    SUM(p.rows) AS RowCounts
FROM sys.tables t
JOIN sys.schemas s ON t.schema_id = s.schema_id
JOIN sys.partitions p ON t.object_id = p.object_id
WHERE p.index_id IN (0, 1) -- Heap or Clustered Index
GROUP BY s.name, t.name
ORDER BY t.name;