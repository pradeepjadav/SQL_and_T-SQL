CREATE TABLE EmployeeJobRole (
    EmployeeJobRoleId INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeId INT FOREIGN KEY REFERENCES Employees(EmployeeId),
    JobRoleId INT FOREIGN KEY REFERENCES JobRoles(JobRoleId),
    AssignedDate DATETIME DEFAULT GETDATE(),
    CreatedBy NVARCHAR(100),
    UpdatedBy NVARCHAR(100),
    CreatedDate DATETIME DEFAULT GETDATE(),
    UpdatedDate DATETIME,
    IsActive BIT DEFAULT 1,
    IsArchived BIT DEFAULT 0
);
