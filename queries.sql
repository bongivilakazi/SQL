
SELECT *
    FROM Customers;

SELECT FirstName
FROM Customers;


SELECT FirstName
FROM Customers
WHERE CustomerID = 1;

UPDATE Customers SET FirstName = 'Lerato', LastName = 'Mabitso'
WHERE CustomerID = 1;

DELETE FROM Customers WHERE CustomerID = 2;

SELECT COUNT(Status)
FROM Orders;

SELECT MAX(Amount)
FROM Payments;

SELECT *
    FROM Customers
ORDER BY Country ASC;

SELECT *
    FROM Products
WHERE Buyprice BETWEEN '100'
AND '600';

SELECT *
    FROM Customers
WHERE city = 'Berlin'
AND country = 'Germany';

SELECT *
    FROM Customers
WHERE city = 'Cape Town'
OR city = 'Durban';

SELECT *
    FROM  Products
WHERE Buyprice > '500';

SELECT SUM(Amount)
FROM Payments;

SELECT COUNT( * )
FROM Orders
WHERE Status = 'Shipped';


SELECT AVG(Buyprice / 12) as Dollar, AVG(Buyprice) as Rand
FROM Products;

SELECT Customers.CustomerID, Payments.PaymentID
FROM Customers
INNER JOIN Payments
ON Customers.CustomerID = Payments.CustomerID;

SELECT *
    FROM Products
WHERE DESCRIPTION LIKE 'Turnable front wheels%';
