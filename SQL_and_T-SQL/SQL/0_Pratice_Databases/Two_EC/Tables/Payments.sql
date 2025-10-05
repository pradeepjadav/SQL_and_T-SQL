CREATE TABLE Payments (
    PaymentId INT IDENTITY(1,1) PRIMARY KEY,
    OrderId INT NOT NULL,
    PaymentDate DATETIME DEFAULT GETDATE(),
    PaymentMethod NVARCHAR(50),
    Amount DECIMAL(12,2) NOT NULL,
    PaymentStatus NVARCHAR(50) DEFAULT 'Paid',
    CreatedBy  NVARCHAR(100) DEFAULT 'System',
    UpdatedBy  NVARCHAR(100) NULL,
    CreatedDate DATETIME DEFAULT GETDATE(),
    UpdatedDate DATETIME NULL,
    IsActive BIT DEFAULT 1,
    IsArchived BIT DEFAULT 0

    CONSTRAINT FK_Payments_Orders FOREIGN KEY (OrderId) REFERENCES Orders(OrderId),
);
GO