/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

INSERT INTO Categories (CategoryName, Description, CreatedBy)
VALUES
('Electronics','Phones, laptops and accessories','Seed'),
('Home Appliances','Kitchen and home devices','Seed'),
('Books','Fiction, non-fiction, academic','Seed'),
('Clothing','Men, Women, Kids clothing','Seed'),
('Beauty','Cosmetics & personal care','Seed'),
('Sports','Sports gear & fitness','Seed'),
('Toys','Kids toys & games','Seed'),
('Office Supplies','Stationery and office products','Seed'),
('Furniture','Home and office furniture','Seed'),
('Groceries','Daily grocery items','Seed');
GO

INSERT INTO Suppliers (SupplierName, ContactEmail, Phone, Website, CreatedBy)
VALUES
('Alpha Electronics','sales@alpha.com','+1-555-0101','https://alpha.example','Seed'),
('HomeGoods Co','contact@homegoods.com','+1-555-0102','https://homegoods.example','Seed'),
('BookWorld','info@bookworld.com','+1-555-0103','https://bookworld.example','Seed'),
('FashionHub','hello@fashionhub.com','+1-555-0104','https://fashionhub.example','Seed'),
('BeautyPro','support@beautypro.com','+1-555-0105','https://beautypro.example','Seed'),
('Sportify','sales@sportify.com','+1-555-0106','https://sportify.example','Seed'),
('ToyBox','service@toybox.com','+1-555-0107','https://toybox.example','Seed'),
('OfficeMate','sales@officemate.com','+1-555-0108','https://officemate.example','Seed'),
('FurniCo','info@furnico.com','+1-555-0109','https://furnico.example','Seed'),
('FreshMart','orders@freshmart.com','+1-555-0110','https://freshmart.example','Seed');
GO

INSERT INTO Customers (FirstName, LastName, Email, Phone, CreatedBy)
VALUES
('Alex','Johnson','alex.johnson@example.com','+1-700-0001','Seed'),
('Priya','Shah','priya.shah@example.com','+1-700-0002','Seed'),
('Carlos','Garcia','carlos.garcia@example.com','+1-700-0003','Seed'),
('Fatima','Khan','fatima.khan@example.com','+1-700-0004','Seed'),
('Liam','Smith','liam.smith@example.com','+1-700-0005','Seed'),
('Emma','Brown','emma.brown@example.com','+1-700-0006','Seed'),
('Noah','Davis','noah.davis@example.com','+1-700-0007','Seed'),
('Sophia','Lee','sophia.lee@example.com','+1-700-0008','Seed'),
('Arjun','Mehta','arjun.mehta@example.com','+1-700-0009','Seed'),
('Olivia','Wilson','olivia.wilson@example.com','+1-700-0010','Seed');
GO

INSERT INTO Coupons (Code, DiscountPercent, ExpiryDate, MinOrderAmount, CreatedBy)
VALUES
('WELCOME10', 10.00, '2025-12-31', 0.00, 'Seed'),
('SPRING15', 15.00, '2025-06-30', 50.00, 'Seed'),
('FREESHIP', 0.00, '2025-03-31', 20.00, 'Seed'),
('BLACKFRI20', 20.00, '2025-11-30', 100.00, 'Seed'),
('VIP25', 25.00, '2026-01-31', 200.00, 'Seed'),
('OFF5', 5.00, '2024-12-31', 0.00, 'Seed'),
('SUMMER12', 12.00, '2025-08-31', 30.00, 'Seed'),
('NEWYEAR30', 30.00, '2026-01-10', 150.00, 'Seed'),
('FLASH50', 50.00, '2024-11-30', 500.00, 'Seed'),
('LOYAL10', 10.00, '2026-12-31', 0.00, 'Seed');
GO

INSERT INTO Products (ProductName, CategoryId, SupplierId, Price, Stock, SKU, Description, CreatedBy)
VALUES
('Smartphone X100', 1, 1, 699.99, 120, 'SM-X100', 'Flagship smartphone', 'Seed'),
('4K LED TV 55"', 1, 1, 899.99, 40, 'TV-55-4K', 'High resolution TV', 'Seed'),
('Blender Pro', 2, 2, 79.50, 200, 'BL-PRO', 'Kitchen blender', 'Seed'),
('Modern Office Chair', 9, 9, 199.99, 150, 'OC-100', 'Ergonomic chair', 'Seed'),
('Running Shoes', 6, 6, 120.00, 300, 'RUN-01', 'Lightweight running shoes', 'Seed'),
('Children Story Book', 3, 3, 15.99, 500, 'BK-CH-01', 'Bedtime stories', 'Seed'),
('Lipstick Set', 5, 5, 29.99, 250, 'BE-LP-01', 'Matte lipstick set', 'Seed'),
('Office Notebook Pack', 8, 8, 9.99, 1000, 'OS-NT-10', 'Pack of 10 notebooks', 'Seed'),
('Organic Almonds 1kg', 10, 10, 18.50, 400, 'GR-ALM-1KG', 'Dry fruits', 'Seed'),
('Smartwatch Z', 1, 1, 249.99, 80, 'SW-Z', 'Fitness smartwatch', 'Seed');
GO

INSERT INTO Orders (CustomerId, CouponId, OrderDate, OrderStatus, TotalAmount, CreatedBy)
VALUES
(1, 1, '2024-09-01 10:00', 'Completed', 699.99, 'Seed'),   -- Smartphone X100
(2, NULL, '2024-09-02 11:15', 'Completed', 79.50, 'Seed'),  -- Blender Pro
(3, 2, '2024-09-03 12:30', 'Completed', 249.99, 'Seed'),    -- Smartwatch Z (coupon applied)
(4, NULL, '2024-09-04 09:45', 'Completed', 199.99, 'Seed'), -- Office Chair
(5, 3, '2024-09-05 14:20', 'Completed', 120.00, 'Seed'),    -- Running Shoes
(6, NULL, '2024-09-06 15:00', 'Completed', 15.99, 'Seed'),  -- Book
(7, 4, '2024-09-07 16:10', 'Completed', 899.99, 'Seed'),    -- 4K TV
(8, NULL, '2024-09-08 17:00', 'Completed', 9.99, 'Seed'),   -- Notebook pack
(9, 5, '2024-09-09 18:30', 'Completed', 95000.00, 'Seed'), -- example large order (simulate corporate)
(10, NULL, '2024-09-10 19:00', 'Completed', 18.50, 'Seed'); -- Almonds
GO

INSERT INTO OrderItems (OrderId, ProductId, Quantity, UnitPrice, CreatedBy)
VALUES
(1, 1, 1, 699.99, 'Seed'),
(2, 3, 1, 79.50, 'Seed'),
(3, 10, 1, 249.99, 'Seed'),
(4, 4, 1, 199.99, 'Seed'),
(5, 5, 1, 120.00, 'Seed'),
(6, 6, 1, 15.99, 'Seed'),
(7, 2, 1, 899.99, 'Seed'),
(8, 8, 1, 9.99, 'Seed'),
(9, 2, 50, 1900.00, 'Seed'),  -- purposely large quantities/prices to simulate corporate large order
(10, 9, 1, 18.50, 'Seed');
GO

INSERT INTO Payments (OrderId, PaymentDate, PaymentMethod, Amount, PaymentStatus, CreatedBy)
VALUES
(1, '2024-09-01 10:05', 'Card', 699.99, 'Paid', 'Seed'),
(2, '2024-09-02 11:20', 'Card', 79.50, 'Paid', 'Seed'),
(3, '2024-09-03 12:35', 'Card', 249.99, 'Paid', 'Seed'),
(4, '2024-09-04 09:50', 'Card', 199.99, 'Paid', 'Seed'),
(5, '2024-09-05 14:25', 'Card', 120.00, 'Paid', 'Seed'),
(6, '2024-09-06 15:05', 'Card', 15.99, 'Paid', 'Seed'),
(7, '2024-09-07 16:15', 'BankTransfer', 899.99, 'Paid', 'Seed'),
(8, '2024-09-08 17:05', 'Card', 9.99, 'Paid', 'Seed'),
(9, '2024-09-09 18:40', 'BankTransfer', 95000.00, 'Paid', 'Seed'),
(10, '2024-09-10 19:05', 'Card', 18.50, 'Paid', 'Seed');
GO

INSERT INTO Shipments (OrderId, ShippedDate, DeliveredDate, Carrier, TrackingNumber, ShipmentStatus, CreatedBy)
VALUES
(1, '2024-09-02', '2024-09-05', 'FastShip', 'FS123456', 'Delivered', 'Seed'),
(2, '2024-09-03', '2024-09-06', 'ShipQuick', 'SQ234567', 'Delivered', 'Seed'),
(3, '2024-09-04', '2024-09-07', 'FastShip', 'FS345678', 'Delivered', 'Seed'),
(4, '2024-09-05', '2024-09-09', 'MoveIt', 'MI456789', 'Delivered', 'Seed'),
(5, '2024-09-06', '2024-09-10', 'MoveIt', 'MI567890', 'Delivered', 'Seed'),
(6, '2024-09-07', '2024-09-09', 'ShipQuick', 'SQ678901', 'Delivered', 'Seed'),
(7, '2024-09-08', '2024-09-12', 'FreightPro', 'FP789012', 'Delivered', 'Seed'),
(8, '2024-09-09', '2024-09-11', 'LocalPost', 'LP890123', 'Delivered', 'Seed'),
(9, '2024-09-10', '2024-09-16', 'FreightPro', 'FP901234', 'In Transit', 'Seed'),
(10, '2024-09-11', '2024-09-13', 'LocalPost', 'LP012345', 'Delivered', 'Seed');
GO

INSERT INTO ProductReviews (ProductId, CustomerId, Rating, ReviewText, ReviewDate, CreatedBy)
VALUES
(1, 1, 5, 'Excellent phone, great battery life.', '2024-09-05', 'Seed'),
(2, 7, 4, 'Great TV for the price.', '2024-09-06', 'Seed'),
(3, 2, 4, 'Blends well, easy to clean.', '2024-09-07', 'Seed'),
(4, 4, 5, 'Very comfortable chair.', '2024-09-08', 'Seed'),
(5, 5, 4, 'Good running shoes.', '2024-09-09', 'Seed'),
(6, 6, 5, 'Lovely book for kids.', '2024-09-10', 'Seed'),
(7, 8, 3, 'Lipstick lasted half a day.', '2024-09-11', 'Seed'),
(8, 9, 5, 'Notebooks are sturdy.', '2024-09-12', 'Seed'),
(9, 10, 5, 'Almonds were fresh and tasty.', '2024-09-13', 'Seed'),
(10, 3, 4, 'Smartwatch has useful features.', '2024-09-14', 'Seed');
GO

-- =====================
-- Quick verification selects (run to check data)
-- =====================
SELECT TOP 10 * FROM Categories;
SELECT TOP 10 * FROM Suppliers;
SELECT TOP 10 * FROM Customers;
SELECT TOP 10 * FROM Coupons;
SELECT TOP 10 * FROM Products;
SELECT TOP 10 * FROM Orders;
SELECT TOP 10 * FROM OrderItems;
SELECT TOP 10 * FROM Payments;
SELECT TOP 10 * FROM Shipments;
SELECT TOP 10 * FROM ProductReviews;




