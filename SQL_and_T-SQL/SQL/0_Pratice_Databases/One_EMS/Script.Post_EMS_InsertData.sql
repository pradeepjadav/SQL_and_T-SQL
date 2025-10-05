/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
- Insert Data
--------------------------------------------------------------------------------------
*/

-- Departments
INSERT INTO Departments (DepartmentName, Description, CreatedBy)
VALUES 
('Human Resources', 'Handles recruitment and employee welfare', 'Admin'),
('Finance', 'Manages company finances and payroll', 'Admin'),
('IT', 'Responsible for software and infrastructure', 'Admin'),
('Marketing', 'Handles promotions and branding', 'Admin'),
('Sales', 'Manages client relations and revenue', 'Admin'),
('Operations', 'Oversees daily company operations', 'Admin'),
('R&D', 'Research and Development department', 'Admin'),
('Support', 'Technical and customer support', 'Admin'),
('Procurement', 'Manages purchases and vendors', 'Admin'),
('Admin', 'Office and facility management', 'Admin');

-- Employees 
INSERT INTO Employees (FirstName, LastName, Email, PhoneNumber, Gender, DOB, HireDate, Salary, DepartmentId, CreatedBy)
VALUES
('John', 'Doe', 'john.doe@company.com', '9991112222', 'Male', '1990-04-12', '2020-01-15', 55000, 3, 'HR'),
('Jane', 'Smith', 'jane.smith@company.com', '9991112223', 'Female', '1992-07-21', '2019-05-20', 60000, 1, 'HR'),
('Raj', 'Patel', 'raj.patel@company.com', '9991112224', 'Male', '1995-02-18', '2021-03-12', 75000, 3, 'Admin'),
('Aisha', 'Khan', 'aisha.khan@company.com', '9991112225', 'Female', '1993-09-30', '2022-07-01', 45000, 4, 'Admin'),
('Michael', 'Brown', 'michael.brown@company.com', '9991112226', 'Male', '1988-01-25', '2018-10-01', 80000, 2, 'Finance'),
('Priya', 'Sharma', 'priya.sharma@company.com', '9991112227', 'Female', '1996-06-14', '2023-02-15', 50000, 3, 'Admin'),
('Liam', 'Wilson', 'liam.wilson@company.com', '9991112228', 'Male', '1994-03-10', '2021-08-01', 70000, 6, 'Admin'),
('Sophia', 'Thomas', 'sophia.thomas@company.com', '9991112229', 'Female', '1991-11-05', '2020-06-17', 48000, 5, 'Admin'),
('Ankit', 'Mehta', 'ankit.mehta@company.com', '9991112230', 'Male', '1997-12-01', '2024-01-10', 52000, 7, 'Admin'),
('Olivia', 'Jones', 'olivia.jones@company.com', '9991112231', 'Female', '1993-05-19', '2019-12-01', 62000, 3, 'Admin');


-- JobRoles
INSERT INTO JobRoles (RoleName, Description, CreatedBy)
VALUES
('Software Developer', 'Develops and maintains software applications', 'Admin'),
('HR Manager', 'Manages HR operations', 'Admin'),
('Accountant', 'Handles company financial records', 'Admin'),
('Project Manager', 'Oversees project planning and delivery', 'Admin'),
('Sales Executive', 'Manages client sales and leads', 'Admin'),
('System Administrator', 'Maintains IT infrastructure', 'Admin'),
('Marketing Specialist', 'Plans marketing campaigns', 'Admin'),
('Support Engineer', 'Provides tech support', 'Admin'),
('Data Analyst', 'Analyzes business data', 'Admin'),
('Business Analyst', 'Bridges business and tech requirements', 'Admin');

-- EmployeeJobRoles
INSERT INTO EmployeeJobRoles (EmployeeId, JobRoleId, CreatedBy)
VALUES
(1, 1, 'Admin'),
(2, 2, 'Admin'),
(3, 1, 'Admin'),
(4, 7, 'Admin'),
(5, 3, 'Admin'),
(6, 9, 'Admin'),
(7, 4, 'Admin'),
(8, 5, 'Admin'),
(9, 8, 'Admin'),
(10, 10, 'Admin');

-- Payroll
INSERT INTO Payroll (EmployeeId, BasicSalary, Bonus, Tax, PayDate, CreatedBy)
VALUES
(1, 55000, 5000, 3000, '2024-09-30', 'Admin'),
(2, 60000, 4000, 3500, '2024-09-30', 'Admin'),
(3, 75000, 6000, 4000, '2024-09-30', 'Admin'),
(4, 45000, 2000, 2500, '2024-09-30', 'Admin'),
(5, 80000, 8000, 5000, '2024-09-30', 'Admin'),
(6, 50000, 2500, 3000, '2024-09-30', 'Admin'),
(7, 70000, 5000, 3500, '2024-09-30', 'Admin'),
(8, 48000, 1500, 2500, '2024-09-30', 'Admin'),
(9, 52000, 2000, 2800, '2024-09-30', 'Admin'),
(10, 62000, 3500, 3200, '2024-09-30', 'Admin');

-- Attandance
INSERT INTO Attendance (EmployeeId, CheckInTime, CheckOutTime, CreatedBy)
VALUES
(1, '2024-09-30 09:00:00', '2024-09-30 18:00:00', 'Admin'),
(2, '2024-09-30 09:30:00', '2024-09-30 17:30:00', 'Admin'),
(3, '2024-09-30 09:00:00', '2024-09-30 18:00:00', 'Admin'),
(4, '2024-09-30 10:00:00', '2024-09-30 19:00:00', 'Admin'),
(5, '2024-09-30 09:15:00', '2024-09-30 18:15:00', 'Admin'),
(6, '2024-09-30 09:05:00', '2024-09-30 18:00:00', 'Admin'),
(7, '2024-09-30 09:45:00', '2024-09-30 18:30:00', 'Admin'),
(8, '2024-09-30 09:00:00', '2024-09-30 17:45:00', 'Admin'),
(9, '2024-09-30 09:20:00', '2024-09-30 18:00:00', 'Admin'),
(10, '2024-09-30 09:10:00', '2024-09-30 18:10:00', 'Admin');


-- Projects
INSERT INTO Projects (ProjectName, Description, StartDate, EndDate, DepartmentId, CreatedBy)
VALUES
('Employee Portal', 'Web app for managing employees', '2024-01-01', '2024-06-30', 3, 'Admin'),
('Payroll System', 'Automate salary processing', '2024-02-01', '2024-08-30', 2, 'Admin'),
('Recruitment App', 'Online hiring platform', '2024-03-01', '2024-09-01', 1, 'Admin'),
('Marketing Dashboard', 'Analytics for campaigns', '2024-04-01', '2024-10-01', 4, 'Admin'),
('CRM Tool', 'Customer relationship management', '2024-05-01', '2024-12-01', 5, 'Admin'),
('Inventory Tracker', 'Manages stock and supply chain', '2024-06-01', '2024-11-30', 9, 'Admin'),
('Support Bot', 'AI chatbot for support tickets', '2024-07-01', '2024-12-31', 8, 'Admin'),
('R&D Knowledge Hub', 'Internal documentation platform', '2024-01-15', '2024-09-15', 7, 'Admin'),
('Operations Suite', 'Automates business workflows', '2024-02-20', '2024-10-20', 6, 'Admin'),
('Admin Tracker', 'Facility and asset management', '2024-03-10', '2024-09-10', 10, 'Admin');

-- EmployeeProjects
INSERT INTO EmployeeProjects (EmployeeId, ProjectId, RoleInProject, CreatedBy)
VALUES
(1, 1, 'Backend Developer', 'Admin'),
(2, 3, 'HR Lead', 'Admin'),
(3, 1, 'Full Stack Developer', 'Admin'),
(4, 4, 'Marketing Coordinator', 'Admin'),
(5, 2, 'Account Lead', 'Admin'),
(6, 8, 'Data Analyst', 'Admin'),
(7, 9, 'Project Manager', 'Admin'),
(8, 5, 'Sales Executive', 'Admin'),
(9, 7, 'Support Engineer', 'Admin'),
(10, 10, 'Admin Coordinator', 'Admin');