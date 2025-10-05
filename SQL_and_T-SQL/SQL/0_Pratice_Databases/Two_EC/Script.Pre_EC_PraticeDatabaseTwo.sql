/*
 Pre-Deployment Script Template							
--------------------------------------------------------------------------------------
- Create a Database and Used
- Map of the tables			
--------------------------------------------------------------------------------------
*/

-- ===============================================
-- Database: PracticeSQLTwo_EC
-- Domain: E-commerce (Inventory & Orders)
-- ===============================================

IF DB_ID('PracticeSQLTwo_EC') IS NOT NULL
BEGIN
    ALTER DATABASE PracticeSQLTwo_EC SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE PracticeSQLTwo_EC;
END
GO

-- Create a Database
CREATE DATABASE PracticeSQLTwo_EC;
GO

-- -- Switch to the new database
USE PracticeSQLTwo_EC;
GO

-- Schema summary
/*
    | Table Name        | Description                                               |
    | ----------------- | --------------------------------------------------------- |
    | Categories        | Product categories                                         |
    | Suppliers         | Product suppliers                                          |
    | Products          | Product catalog (belongs to Category, supplied by Supplier)|
    | Customers         | E-commerce customers                                       |
    | Coupons           | Coupon codes and discount rules                            |
    | Orders            | Customer orders (may reference Coupon)                     |
    | OrderItems        | Items inside orders (Order ↔ Product)                      |
    | Payments          | Payments for orders                                        |
    | Shipments         | Shipping info for orders                                   |
    | ProductReviews    | Customer reviews for products                              |
*/