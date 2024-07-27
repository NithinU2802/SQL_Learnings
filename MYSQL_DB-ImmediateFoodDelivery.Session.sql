# Creating Delivery Table
CREATE TABLE Delivery (
    delivery_id INT,
    customer_id INT,
    order_date DATE,
    customer_pref_delivery_date DATE
);

# Inserting values to the table
INSERT INTO Delivery (delivery_id, customer_id, order_date, customer_pref_delivery_date)
VALUES
    (1, 1, '2019-08-01', '2019-08-02'),
    (2, 2, '2019-08-02', '2019-08-02'),
    (3, 1, '2019-08-11', '2019-08-12'),
    (4, 3, '2019-08-24', '2019-08-24'),
    (5, 3, '2019-08-21', '2019-08-22'),
    (6, 2, '2019-08-11', '2019-08-13'),
    (7, 4, '2019-08-09', '2019-08-09');

# If the customers preferred delivery date is the same as the order date, then the order is called immediate; otherwise, it is called scheduled.
# The first order of a customer is the order with the earliest order date that the customer made. It is guaranteed that a customer has precisely one first order.
# Write a solution to find the percentage of immediate orders in the first orders of all customers, rounded to 2 decimal places.
WITH FirstOrder AS (
    SELECT customer_id, MIN(order_date) as firstdate
    FROM Delivery GROUP BY customer_id
),
Immediate AS (
    SELECT b.customer_id
    FROM Delivery AS a JOIN FirstOrder AS b
    ON a.customer_id=b.customer_id
    WHERE b.firstdate=a.customer_pref_delivery_date
)
SELECT 
    ROUND(COUNT(io.customer_id) * 100.0 / COUNT(fo.customer_id), 2) AS immediate_percentage
FROM 
    FirstOrder fo
LEFT JOIN 
    Immediate io ON fo.customer_id = io.customer_id;
