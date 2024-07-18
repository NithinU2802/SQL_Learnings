# Table 1 Employee
CREATE TABLE Employee (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    experience_years INT
);

# Table 2 Project
CREATE TABLE Project (
    project_id INT,
    employee_id INT,
    PRIMARY KEY (project_id, employee_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

# Inserting Elements on Table 1
INSERT INTO Employee (employee_id, name, experience_years) VALUES
(1, 'Khaled', 3),
(2, 'Ali', 2),
(3, 'John', 1),
(4, 'Doe', 2);

# Inserting Elements on Table 1
INSERT INTO Project (project_id, employee_id) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 4);

#  Write an SQL query that reports the average experience years of all the employees for each project, rounded to 2 digits. Return the result table in any order.
SELECT Project.project_id, ROUND(AVG(Employee.experience_years),2) as average_years
FROM Project 
LEFT JOIN Employee ON Project.employee_id=Employee.employee_id 
GROUP BY Project.project_id;
