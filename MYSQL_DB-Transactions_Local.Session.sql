# Creating table
CREATE TABLE Transactions (
    id INT PRIMARY KEY,
    country VARCHAR(2),
    state VARCHAR(10),
    amount DECIMAL(10, 2),
    trans_date DATE
);


# Adding Values
INSERT INTO Transactions (id, country, state, amount, trans_date) VALUES
(121, 'US', 'approved', 1000.00, '2018-12-18'),
(122, 'US', 'declined', 2000.00, '2018-12-19'),
(123, 'US', 'approved', 2000.00, '2019-01-01'),
(124, 'DE', 'approved', 2000.00, '2019-01-07');

# Write an SQL query to find for each month and country, the number of transactions and their
total amount, the number of approved transactions and their total amount.
SELECT 
    DATE_FORMAT(trans_date, '%Y-%m') as month,
    country, count(*) as trans_count,
    SUM(CASE WHEN state = 'approved' THEN 1 ELSE 0 END) AS approved_count,
    SUM(amount) AS trans_total_amount,
    SUM(CASE WHEN state = 'approved' THEN amount ELSE 0 END) AS approved_total_amount
FROM Transactions
GROUP BY month, Country;
