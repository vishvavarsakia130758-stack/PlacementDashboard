CREATE DATABASE PlacementDB;
GO

USE PlacementDB;
GO

CREATE TABLE Placements
(
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    Department VARCHAR(30),
    Company VARCHAR(50),
    Package INT,
    Status VARCHAR(20)
);

INSERT INTO Placements VALUES
(1, 'Rahul', 'Computer', 'TCS', 400000, 'Placed'),
(2, 'Priya', 'IT', 'Infosys', 500000, 'Placed'),
(3, 'Amit', 'Computer', 'Not Assigned', 0, 'Not Placed'),
(4, 'Neha', 'IT', 'Wipro', 450000, 'Placed');