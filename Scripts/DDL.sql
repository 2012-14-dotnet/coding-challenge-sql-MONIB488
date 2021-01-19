-- Create a new database called 'DatabaseName'
-- Connect to the 'master' database to run this snippet
USE master
GO
-- Create the new database if it does not exist already
IF NOT EXISTS (
    SELECT name
        FROM sys.databases
        WHERE name = N'EmployeeInfo'
)
CREATE DATABASE EmployeeInfo
GO



-- Create the table in the specified schema
CREATE TABLE Department
(
    DeptID INT NOT NULL PRIMARY KEY, -- primary key column
    Name [NVARCHAR](50) NOT NULL,
    Locaction [NVARCHAR](50) NOT NULL
    
);
GO


-- Create the table in the specified schema
CREATE TABLE Employee
(
    EmployeeId INT NOT NULL PRIMARY KEY, -- primary key column
    FirstName [NVARCHAR](50) NOT NULL,
    LastName [NVARCHAR](50) NOT NULL,
    SSN [NVARCHAR](50) NOT NULL,
    DeptID INT NOT NULL FOREIGN KEY REFERENCES Department(DeptID)
    -- specify more columns here
);
GO


-- Create the table in the specified schema
CREATE TABLE EmpDetails
(
    ID INT NOT NULL PRIMARY KEY, -- primary key column
    EmployeeId INT NOT NULL FOREIGN KEY REFERENCES Employee(EmployeeID),
    Column1 [NVARCHAR](50) NOT NULL,
    Column2 [NVARCHAR](50) NOT NULL
    -- specify more columns here
);
GO