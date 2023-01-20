--6.3.1. Выполните агрегацию таблицы Contacts по полю ContactType

SELECT COUNT(ContactType) FROM Contacts;


--6.3.2. Выведите средние цены товаров (UnitPrice) в каждой из категорий (CategoryId) таблицы Products, отсортированные по возрастанию.

SELECT CategoryID, 
	AVG(UnitPrice) as UNIT_PRICE
FROM Products
GROUP BY CategoryID
ORDER BY UNIT_PRICE;

/*
Рефлексия

5.4.2. Исключите из предыдущего набора те записи, в которых поле Region равно NULL.

здесь использовал не самую оптимальную форму записи, из-за чего усложнилось прочтение кода
вместо WHERE Region IS NOT NULL
написал WHERE NOT (Region IS NULL)

5.4.3. Найдите среднюю, минимальную и максимальную цены по полю UnitPrice из таблицы Order Details

Ошибочно разбил запрос на 3 отдельных запроса в то время, как их можно было объединить.
вместо SELECT AVG(UnitPrice), MIN(UnitPrice), MAX(UnitPrice)
		FROM [Order Details]

написал 3 запроса:
SELECT AVG(UnitPrice) FROM [Order Details];
SELECT MIN(UnitPrice) FROM [Order Details];
SELECT MAX(UnitPrice) FROM [Order Details];
*/
