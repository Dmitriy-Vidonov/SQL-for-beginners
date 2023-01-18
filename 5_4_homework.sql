SELECT * FROM Employees ORDER BY BirthDate DESC, Country;

SELECT * FROM Employees 
WHERE NOT (Region IS NULL)
ORDER BY BirthDate DESC, Country;

SELECT AVG(UnitPrice) FROM [Order Details];
SELECT MIN(UnitPrice) FROM [Order Details];
SELECT MAX(UnitPrice) FROM [Order Details];

SELECT COUNT(DISTINCT City) FROM Customers;

/*
Рефлексия

Задание 4.3.2.
в сложном запросе не использовал скобки для повышения наглядности и читаемости кода

вместо
SELECT * FROM Orders
WHERE (Freight BETWEEN 100 AND 200) AND
      (ShipCountry IN ('France','USA'))

прописал
SELECT * FROM Orders
WHERE Freight BETWEEN 100 AND 200
AND ShipCountry IN ('USA', 'France');
*/
