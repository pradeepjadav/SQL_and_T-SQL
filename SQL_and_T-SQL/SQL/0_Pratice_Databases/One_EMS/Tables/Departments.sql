CREATE TABLE Departments (
    DepartmentId INT IDENTITY(1,1) PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL,
    Location VARCHAR(100),
    CreatedBy VARCHAR(100) DEFAULT SYSTEM_USER,
    UpdatedBy VARCHAR(100) NULL,
    CreatedDate DATETIME DEFAULT GETDATE(),
    UpdatedDate DATETIME NULL,
    IsActive BIT DEFAULT 1,
    IsArchived BIT DEFAULT 0
);
