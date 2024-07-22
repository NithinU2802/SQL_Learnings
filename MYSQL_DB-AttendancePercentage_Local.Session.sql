# Create req tables
  
# 1. User Table
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    user_name VARCHAR(50)
);

# 2. Register Table
CREATE TABLE Register (
    contest_id INT,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

# Inserting Values to Users
INSERT INTO Users (user_id, user_name) VALUES
(6, 'Alice'),
(2, 'Bob'),
(7, 'Alex');

# Inserting Value to Registers
INSERT INTO Register (contest_id, user_id) VALUES
(215, 6),
(209, 2),
(208, 2),
(210, 6),
(208, 6),
(209, 7),
(209, 6),
(215, 7),
(208, 7),
(210, 2),
(207, 2),
(210, 7);

# Write a solution to find the percentage of the users registered in each contest rounded to two decimals.
# Return the result table ordered by percentage in descending order. In case of a tie, order it by contest_id in ascending order.
SELECT Register.contest_id,
ROUND((COUNT(Users.user_id)/(SELECT COUNT(*) FROm Users))*100,2) as percentage FROM Users
Right JOIN Register ON Register.user_id=Users.user_id 
GROUP BY Register.contest_id ORDER BY percentage DESC, Register.contest_id;



