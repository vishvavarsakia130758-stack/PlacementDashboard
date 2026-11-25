
USE PlacementDB;
GO

IF OBJECT_ID('dbo.Placements', 'U') IS NULL
BEGIN
    CREATE TABLE Placements
    (
        PlacementID INT PRIMARY KEY IDENTITY(1,1),
        StudentID INT,
        CompanyName VARCHAR(100),
        Package DECIMAL(10,2),
        Status VARCHAR(30)
    );

    INSERT INTO Placements
        (StudentID, CompanyName, Package, Status)
    VALUES
        (1, 'TCS', 450000, 'Placed'),
        (2, 'Infosys', 500000, 'Placed'),
        (3, 'Wipro', 350000, 'Pending');
END;
GO
