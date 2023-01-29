--11.5.1. Отберите с помощью LEFT JOIN все записи из таблицы Customers, для которых FK-ключ таблицы Orders пустой.

SELECT * FROM Customers
LEFT JOIN Orders ON OrderID IS NULL;


--11.5.2. Выведите конкретную информацию по всем пользователям Customers и поставщикам Suppliers -- имя контактной персоны, город и страну,
--а также идентификацию группы (пользователь или поставщик).

SELECT 'Customer' As Type, Customers.ContactName, Customers.City, Customers.Country
FROM Customers
UNION
SELECT 'Supplier' As Type, Suppliers.ContactName, Suppliers.City, Suppliers.Country
FROM Suppliers;
