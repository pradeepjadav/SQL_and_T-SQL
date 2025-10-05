CREATE TABLE JobRoles (
    JobRoleId INT IDENTITY(1,1) PRIMARY KEY,
    RoleName NVARCHAR(100) NOT NULL,
    Description NVARCHAR(255),
    CreatedBy NVARCHAR(100),
    UpdatedBy NVARCHAR(100),
    CreatedDate DATETIME DEFAULT GETDATE(),
    UpdatedDate DATETIME,
    IsActive BIT DEFAULT 1,
    IsArchived BIT DEFAULT 0
);
