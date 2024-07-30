create DATABASE Demo;
CREATE TABLE Member (
    Id int,
    FirstName varchar(255),
    LastName varchar(255),
    Address varchar(255),
    City varchar(255)
);

INSERT INTO Member(id, FirstName, LastName, Address, City)
VALUES (2, 'Nithin', 'U', 'Airport', 'Trichy');

UPDATE Customers
SET Address = 'KK Nagar', City= 'Trichy'
WHERE id = 2;
