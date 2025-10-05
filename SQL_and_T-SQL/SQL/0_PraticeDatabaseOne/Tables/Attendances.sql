CREATE TABLE Attendances (
    AttendanceId INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeId INT FOREIGN KEY REFERENCES Employees(EmployeeId),
    AttendanceDate DATE DEFAULT GETDATE(),
    CheckInTime DATETIME,
    CheckOutTime DATETIME,
    TotalHours AS DATEDIFF(HOUR, CheckInTime, CheckOutTime) PERSISTED,
    CreatedBy NVARCHAR(100),
    UpdatedBy NVARCHAR(100),
    CreatedDate DATETIME DEFAULT GETDATE(),
    UpdatedDate DATETIME,
    IsActive BIT DEFAULT 1,
    IsArchived BIT DEFAULT 0
);
