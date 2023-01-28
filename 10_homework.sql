--10.4.1. Перепишите задание 8.3.2 через синтаксис JOIN.
--8.3.2 Организуйте эквисоединение, которое выводит цену и названия тех товаров, для которых цена за единицу (UnitPrice) в таблице Order Details меньше 20.

SELECT [Order Details].UnitPrice, Products.ProductName
FROM [Order Details]
JOIN Products
ON [Order Details].ProductID = Products.ProductID
AND [Order Details].UnitPrice < 20;


--10.4.2. Имеется запрос

SELECT Orders.Freight, Customers.CompanyName
FROM Orders INNER JOIN Customers
ON Orders.CustomerID = Customers.CustomerID
ORDER BY Freight;

--Проверьте этот запрос с вариантом FULL JOIN -- за счёт чего выдача получилась объёмнее? Почему значения NULL встречаются в обоих полях набора?

--Выдача с FULL JOIN несколько объемнее, так как туда попадают записи в том числе и не подошедшие под условие отбора, из-за чего поля из другой таблицы идут со значением NULL.
--Две записи не совпадают по CustomerID.



--10.4.3. Подумайте, как с помощью предложения WHERE превратить запрос CROSS JOIN в INNER JOIN.

--Для этого надо добавить в CROSS JOIN запрос условие WHERE, которое будет указывать условие сравнение записей таблиц между собой.
--Например, сравнение записей по FK-ключу.


--10.4.4. Перепишите данный запрос в INNER JOIN:
/*
SELECT Products.ProductName, [Order Details].UnitPrice
FROM Products CROSS JOIN [Order Details]
WHERE Products.ProductID = [Order Details].ProductID
*/

SELECT Products.ProductName, [Order Details].UnitPrice
FROM Products INNER JOIN [Order Details]
ON Products.ProductID = [Order Details].ProductID;


/*
Рефлексия

--9.4.1. Найдите все пары из разных заказчиков (Customers), для которых не задан регион (поле Region)

SELECT t1.CompanyName, t2.CompanyName, t1.Region
FROM Customers t1, Customers t2
WHERE t1.Region IS NULL
AND t1.CompanyName <> t2.CompanyName;

моя ошибка в том, что:
1) должна была быть проверка обеих полей Region в обеих таблицах. А я написал только для t1.
2) Сравнение записей производить надо было не по полю CompanyName, а по полю CustomerID, что более корректно при сравнении записей - по первичному полю.


--9.4.2. Найдите вложенным запросом список заказов (Orders), в котором у заказчиков (Customers) регион не пуст (поле Region)

SELECT t1.OrderID, t2.CompanyName, t2.Region
FROM Orders t1, Customers t2
WHERE t2.Region = ANY
(SELECT Region FROM Customers
	WHERE Region IS NOT NULL);

Здесь моя главная ошибка в том, что я изначально указал обе таблицы, с которыми идет работа, когда на деле вторая таблица должна была 
упоминаться лишь во вложенном запросе. Здесь я неверно понял само понятие вложенного запроса. 

И второстепенная ошибка, аналогичная с предыдущим заданием - это оперирование полем Region вместо CustomerID, первичного.


--9.4.3. Найдите все заказы (таблица Orders), цена за доставку товара которых (Freight) превышает цену любого товара (поле UnitPrice, таблица Products).

SELECT t1.OrderID, t1.Freight, t2.UnitPrice
FROM Orders t1, Products t2
WHERE t1.Freight > ALL 
(SELECT UnitPrice FROM Products);


Здесь я сам запрос по сути написал верно, но добавил избыточные данные о фрахте и цене товара, т.к. они фигурировали в самом задании и я решил, что 
их требуется вывести в качестве полей.
*/
