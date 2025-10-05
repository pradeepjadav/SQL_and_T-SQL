/*
 Pre-Deployment Script Template							
--------------------------------------------------------------------------------------
- Create a Database and Used
- Map of the tables
--------------------------------------------------------------------------------------
*/

-- ===============================================
-- Database: PracticeSQLOne_EMS
-- Domain: Employee Management System (HR & Payroll)
-- ===============================================

IF DB_ID('PracticeSQLOne_EMS') IS NOT NULL
BEGIN
    ALTER DATABASE PracticeSQLOne_EMS SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE PracticeSQLOne_EMS;
END
GO

-- Create the database
CREATE DATABASE PracticeSQLOne_EMS;
GO

-- Switch to the new database
USE PracticeSQLOne_EMS;
GO

-- Schema of Tables:
/*
    | Table Name             | Description                                                      |
    | ---------------------- | ---------------------------------------------------------------- |
    | **Departments**        | Stores department information (e.g., IT, HR, Finance)            |
    | **JobRoles**           | Stores list of job roles and their descriptions                  |
    | **Employees**          | Stores employee personal and job-related details                 |
    | **Projects**           | Stores project information managed by departments                |
    | **EmployeeProjects**   | Many-to-many relation linking Employees and Projects             |
    | **EmployeeJobRole**    | Maps employees to their respective job roles                     |
    | **Salaries**           | Stores employee salary history and financial details             |
    | **Payrolls**           | Stores payroll processing details (monthly, yearly, bonuses, etc.)|
    | **Attendances**        | Tracks employee attendance, presence, leave, and working hours   |
*/
