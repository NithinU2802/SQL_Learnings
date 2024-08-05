-- CREATE TABLE
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    points DECIMAL(10, 2)
);

-- Insert SOME VALUE
INSERT INTO Employees (EmployeeID, FirstName, LastName, points)
VALUES (1, 'Nithin', 'U', 50000),
       (2, 'Dhoni', 'MS', 60000),
       (3, 'Kane', 'Will', 55000);

 -- Update table
UPDATE Employees SET Salary = Salary * 1.1;


-- Alter table
ALTER TABLE Employees MODIFY Salary FLOAT;
