CREATE TABLE Coupons (
    CouponId INT IDENTITY(1,1) PRIMARY KEY,
    Code NVARCHAR(50) NOT NULL UNIQUE,
    DiscountPercent DECIMAL(5,2) DEFAULT 0,
    ExpiryDate DATE NULL,
    MinOrderAmount DECIMAL(10,2) DEFAULT 0,
    CreatedBy  NVARCHAR(100) DEFAULT 'System',
    UpdatedBy  NVARCHAR(100) NULL,
    CreatedDate DATETIME DEFAULT GETDATE(),
    UpdatedDate DATETIME NULL,
    IsActive BIT DEFAULT 1,
    IsArchived BIT DEFAULT 0
);