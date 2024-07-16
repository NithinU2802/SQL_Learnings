# Create the Prices table
CREATE TABLE Prices (
    product_id INT,
    start_date DATE,
    end_date DATE,
    price DECIMAL(10, 2)
);

# Insert values into the Prices table
INSERT INTO Prices (product_id, start_date, end_date, price) VALUES
(1, '2019-02-17', '2019-02-28', 5.00),
(1, '2019-03-01', '2019-03-22', 20.00),
(2, '2019-02-01', '2019-02-20', 15.00),
(2, '2019-02-21', '2019-03-31', 30.00),
(3, '2019-02-21', '2019-03-31', 30.00);

# Create the UnitsSold table
CREATE TABLE UnitsSold (
    product_id INT,
    purchase_date DATE,
    units INT
);

# Insert values into the UnitsSold table
INSERT INTO UnitsSold (product_id, purchase_date, units) VALUES
(1, '2019-02-25', 100),
(1, '2019-03-01', 15),
(2, '2019-02-10', 200),
(2, '2019-03-22', 30);

# Query to calculate the average price with respect to units
SELECT 
    Prices.product_id,
    ROUND(
        COALESCE(SUM(Prices.price * UnitsSold.units), 0) / 
        COALESCE(NULLIF(SUM(UnitsSold.units), 0), 1), 2 ) 
  AS average_price
FROM Prices 
LEFT JOIN UnitsSold 
    ON Prices.product_id = UnitsSold.product_id 
    AND UnitsSold.purchase_date BETWEEN Prices.start_date AND Prices.end_date
GROUP BY Prices.product_id;
