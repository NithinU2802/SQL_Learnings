-- CREATE DATABASE restaurant;
-- create table restaurant.Customers(
--     CustomerId INT(6) NOT NULL AUTO_INCREMENT,
--     FirstName VARCHAR(200) NOT NULL,
--     LastName VARCHAR(200) NOT NULL,
--     Email VARCHAR(200),
--     City VARCHAR(200),
--     Phone VARCHAR(20) NOT NULL,
--     Birthday DATE,
--     FavoriteDish INT(6) REFERENCES Dishes(DishId),
--     PRIMARY KEY(CustomerId)
-- );
-- Insert into Customers(
--     CustomerId,
--     FirstName,
--     LastName,
--     Email,
--     City,
--     Phone,
--     Birthday,
--     FavoriteDish
-- )VALUES(
--     4,
--     'Raju',
--     'Mahendra',
--     'mahi07@gmail.com',
--     'Ranchi',
--     '+91 839282XXXX',
--     '1980-07-07',
--     3
-- );
SELECT *
from customers;