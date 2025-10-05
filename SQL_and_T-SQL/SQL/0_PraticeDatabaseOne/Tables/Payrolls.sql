CREATE TABLE Payrolls (
    PayrollId INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeId INT FOREIGN KEY REFERENCES Employees(EmployeeId),
    BasicSalary DECIMAL(10,2),
    Bonus DECIMAL(10,2),
    Tax DECIMAL(10,2),
    NetSalary AS (BasicSalary + Bonus - Tax) PERSISTED,
    PayDate DATE,
    CreatedBy NVARCHAR(100),
    UpdatedBy NVARCHAR(100),
    CreatedDate DATETIME DEFAULT GETDATE(),
    UpdatedDate DATETIME,
    IsActive BIT DEFAULT 1,
    IsArchived BIT DEFAULT 0
);
