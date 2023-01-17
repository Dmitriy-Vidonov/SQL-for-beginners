SELECT * FROM Customers
WHERE ContactName LIKE 'C%';

SELECT * FROM Orders
WHERE Freight BETWEEN 100 AND 200
AND ShipCountry IN ('USA', 'France');

SELECT * FROM EmployeeTerritories
WHERE TerritoryID BETWEEN 6897 AND 31000;

/*
рефлексия
в 3.9.4 пошел немного другим путем и исключил женские упоминания вместо прописывания "мужских" вариантов.
По сути лишняя инверсия в запросе.
*/
