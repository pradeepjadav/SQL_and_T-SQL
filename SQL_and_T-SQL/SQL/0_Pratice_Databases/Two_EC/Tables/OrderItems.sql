CREATE TABLE OrderItems (
    OrderItemId INT IDENTITY(1,1) PRIMARY KEY,
    OrderId INT NOT NULL,
    ProductId INT NOT NULL,
    Quantity INT DEFAULT 1,
    UnitPrice DECIMAL(12,2) NOT NULL,
    LineTotal AS (Quantity * UnitPrice) PERSISTED,
    CreatedBy  NVARCHAR(100) DEFAULT 'System',
    UpdatedBy  NVARCHAR(100) NULL,
    CreatedDate DATETIME DEFAULT GETDATE(),
    UpdatedDate DATETIME NULL,
    IsActive BIT DEFAULT 1,
    IsArchived BIT DEFAULT 0

    CONSTRAINT FK_OrderItems_Orders FOREIGN KEY (OrderId) REFERENCES Orders(OrderId),
    CONSTRAINT FK_OrderItems_Products FOREIGN KEY (ProductId) REFERENCES Products(ProductId),
);