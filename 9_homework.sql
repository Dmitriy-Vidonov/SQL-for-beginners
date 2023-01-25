--9.4.1. Найдите все пары из разных заказчиков (Customers), для которых не задан регион (поле Region)

SELECT t1.CompanyName, t2.CompanyName, t1.Region
FROM Customers t1, Customers t2
WHERE t1.Region IS NULL
AND t1.CompanyName <> t2.CompanyName;


--9.4.2. Найдите вложенным запросом список заказов (Orders), в котором у заказчиков (Customers) регион не пуст (поле Region)

SELECT t1.OrderID, t2.CompanyName, t2.Region
FROM Orders t1, Customers t2
WHERE t2.Region = ANY
(SELECT Region FROM Customers
	WHERE Region IS NOT NULL);


--9.4.3. Найдите все заказы (таблица Orders), цена за доставку товара которых (Freight) превышает цену любого товара (поле UnitPrice, таблица Products).

SELECT t1.OrderID, t1.Freight, t2.UnitPrice
FROM Orders t1, Products t2
WHERE t1.Freight > ALL 
(SELECT UnitPrice FROM Products);

/*
Рефлексия

8.3.1.
SELECT Products.ProductName, Categories.CategoryName
FROM Products, Categories 
WHERE Products.CategoryID = Categories.CategoryID

вместо 

SELECT Products.ProductName, Categories.CategoryName
FROM Products, Categories;

т.е. не дописал проверку на соответствие по CategoryID. Не связал жестко записи между собой, из-за получен неверный вывод данных.
*/
