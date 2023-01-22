--8.3.1. Сформируйте список названий товаров (таблица Products) с указанием для каждого из них соответствующей категории (таблица Categories).

SELECT Products.ProductName, Categories.CategoryName
FROM Products, Categories;


--8.3.2. Организуйте эквисоединение, которое выводит цену и названия тех товаров, для которых цена за единицу (UnitPrice) в таблице Order Details меньше 20.

SELECT [Order Details].UnitPrice, Products.ProductName
FROM [Order Details], Products
WHERE Products.ProductID = [Order Details].ProductID 
	AND [Order Details].UnitPrice < 20; 


--8.3.3. Добавьте к предыдущему запросу третью таблицу Categories, и выведите в дополнение к названию товара его категорию.

SELECT [Order Details].UnitPrice, Products.ProductName, Categories.CategoryName
FROM [Order Details], Products, Categories
WHERE Products.ProductID = [Order Details].ProductID
	AND Products.CategoryID = Categories.CategoryID
	AND [Order Details].UnitPrice < 20; 

/*
Рефлексия
7.3.1. Выведите вычислимое поле таблицы Order Details, в котором укажите значение поля Discount (скидка), выраженное в процентах.

в запросе вывел исключительно значение поля Discount в процентах:
SELECT Discount * 100 as DISCOUNT_IN_PERCENTS FROM [Order Details];

в эталонном решении произведен дополнительный вывод таких полей как OrderID и ProductID
*/
