CREATE TABLE Employees (
    EmployeeId INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Phone VARCHAR(20),
    HireDate DATE DEFAULT GETDATE(),
    DepartmentId INT,
    JobTitle VARCHAR(100),
    Gender CHAR(1) CHECK (Gender IN ('M', 'F')),
    DateOfBirth DATE,
    Salary DECIMAL(10,2),
    ReportingManagerId INT NULL, -- Self-reference
    CreatedBy VARCHAR(100) DEFAULT SYSTEM_USER,
    UpdatedBy VARCHAR(100) NULL,
    CreatedDate DATETIME DEFAULT GETDATE(),
    UpdatedDate DATETIME NULL,
    IsActive BIT DEFAULT 1,
    IsArchived BIT DEFAULT 0

    -- Foreign Key
    CONSTRAINT FK_Employees_Department FOREIGN KEY (DepartmentId)
        REFERENCES Departments(DepartmentId),
    CONSTRAINT FK_Employees_Manager FOREIGN KEY (ReportingManagerId)
        REFERENCES Employees(EmployeeId),
);
