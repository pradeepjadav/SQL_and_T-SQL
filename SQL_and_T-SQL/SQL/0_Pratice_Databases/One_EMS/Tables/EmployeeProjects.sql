CREATE TABLE EmployeeProjects (
    EmployeeProjectId INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeId INT,
    ProjectId INT,
    AssignedDate DATE DEFAULT GETDATE(),
    Role VARCHAR(50),
    WorkHoursPerWeek INT DEFAULT 40,
    Remarks VARCHAR(200),
    CreatedBy VARCHAR(100) DEFAULT SYSTEM_USER,
    UpdatedBy VARCHAR(100) NULL,
    CreatedDate DATETIME DEFAULT GETDATE(),
    UpdatedDate DATETIME NULL,
    IsActive BIT DEFAULT 1,
    IsArchived BIT DEFAULT 0

    FOREIGN KEY (EmployeeId) REFERENCES Employees(EmployeeId),
    FOREIGN KEY (ProjectId) REFERENCES Projects(ProjectId),
);
