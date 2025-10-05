CREATE TABLE Projects (
    ProjectId INT IDENTITY(1,1) PRIMARY KEY,
    ProjectName VARCHAR(100) NOT NULL,
    StartDate DATE,
    EndDate DATE,
    Budget DECIMAL(12,2),
    DepartmentId INT NULL, -- Optional reference to owning dept
    CreatedBy VARCHAR(100) DEFAULT SYSTEM_USER,
    UpdatedBy VARCHAR(100) NULL,
    CreatedDate DATETIME DEFAULT GETDATE(),
    UpdatedDate DATETIME NULL,
    IsActive BIT DEFAULT 1,
    IsArchived BIT DEFAULT 0

    CONSTRAINT FK_Projects_Department FOREIGN KEY (DepartmentId)
        REFERENCES Departments(DepartmentId),
);
