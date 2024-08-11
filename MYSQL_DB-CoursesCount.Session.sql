-- Create Courses Table
CREATE TABLE Courses (
    student VARCHAR(10),
    class VARCHAR(20)
);

-- Insert values to the table
INSERT INTO Courses (student, class) VALUES
('A', 'Math'),
('B', 'English'),
('C', 'Math'),
('D', 'Biology'),
('E', 'Math'),
('F', 'Computer'),
('G', 'Math'),
('H', 'Math'),
('I', 'Math');

-- Write a solution to find all the classes that have at least five students.
-- Return the result table in any order.
SELECT class FROM COURSES
GROUP BY class HAVING COUNT(student)>=5; 
