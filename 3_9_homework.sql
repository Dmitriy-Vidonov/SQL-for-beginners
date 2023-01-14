SELECT ProductName, UnitsInStock FROM Products;

SELECT ProductName, UnitPrice FROM Products
WHERE UnitPrice < 20;

SELECT * FROM ORDERS
WHERE (Freight >= 11.7) AND (Freight <= 98.1);

SELECT * FROM Employees
WHERE TitleOfCourtesy <> 'Ms.' AND TitleOfCourtesy <> 'Mrs.';

SELECT * FROM Suppliers
WHERE Country = 'Japan';

SELECT * FROM Orders
WHERE EmployeeID = 2 OR EmployeeID = 4 OR EmployeeID = 8;

SELECT OrderID, ProductID FROM [Order Details]
WHERE UnitPrice > 40 AND Quantity < 10;
