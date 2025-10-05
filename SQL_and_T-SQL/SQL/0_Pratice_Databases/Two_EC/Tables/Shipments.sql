CREATE TABLE Shipments (
    ShipmentId INT IDENTITY(1,1) PRIMARY KEY,
    OrderId INT NOT NULL,
    ShippedDate DATETIME NULL,
    DeliveredDate DATETIME NULL,
    Carrier NVARCHAR(100),
    TrackingNumber NVARCHAR(100),
    ShipmentStatus NVARCHAR(50) DEFAULT 'Pending',
    CreatedBy  NVARCHAR(100) DEFAULT 'System',
    UpdatedBy  NVARCHAR(100) NULL,
    CreatedDate DATETIME DEFAULT GETDATE(),
    UpdatedDate DATETIME NULL,
    IsActive BIT DEFAULT 1,
    IsArchived BIT DEFAULT 0

    CONSTRAINT FK_Shipments_Orders FOREIGN KEY (OrderId) REFERENCES Orders(OrderId),
);
GO