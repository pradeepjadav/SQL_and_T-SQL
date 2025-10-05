CREATE TABLE Salaries (
    SalaryId INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeId INT,
    Amount DECIMAL(10,2) NOT NULL,
    Bonus DECIMAL(10,2) DEFAULT 0,
    EffectiveFrom DATE DEFAULT GETDATE(),
    EffectiveTo DATE NULL,
    CurrencyCode CHAR(3) DEFAULT 'USD',
    CreatedBy VARCHAR(100) DEFAULT SYSTEM_USER,
    UpdatedBy VARCHAR(100) NULL,
    CreatedDate DATETIME DEFAULT GETDATE(),
    UpdatedDate DATETIME NULL,
    IsActive BIT DEFAULT 1,
    IsArchived BIT DEFAULT 0

    FOREIGN KEY (EmployeeId) REFERENCES Employees(EmployeeId),
);
