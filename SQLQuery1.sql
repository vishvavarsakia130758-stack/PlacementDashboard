
CREATE DATABASE PlacementDB;
GO

USE PlacementDB;
GO

CREATE TABLE Students
(
    StudentID INT PRIMARY KEY IDENTITY(1,1),
    StudentName VARCHAR(100),
    Department VARCHAR(50),
    Email VARCHAR(100),
    CGPA DECIMAL(3,2)
);

CREATE TABLE Placements
(
    PlacementID INT PRIMARY KEY IDENTITY(1,1),
    StudentID INT,
    CompanyName VARCHAR(100),
    Package DECIMAL(10,2),
    Status VARCHAR(30),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);

INSERT INTO Students (StudentName, Department, Email, CGPA)
VALUES
('Rahul Patel', 'Computer Engineering', 'rahul@gmail.com', 8.50),
('Priya Shah', 'IT', 'priya@gmail.com', 9.00),
('Amit Mehta', 'Computer Engineering', 'amit@gmail.com', 7.80);

INSERT INTO Placements (StudentID, CompanyName, Package, Status)
VALUES
(1, 'TCS', 450000, 'Placed'),
(2, 'Infosys', 500000, 'Placed'),
(3, 'Wipro', 350000, 'Pending');
GO
