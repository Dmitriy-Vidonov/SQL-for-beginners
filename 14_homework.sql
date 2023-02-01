/*
14.1. Чем представление Invoices отличается от таблицы Orders?

Представление Invoices содержит подробную накладную, которая является расширенной версией заказа.
Например, вместо идентификатора сотрудника, который не несет для пользователя никакой информации, в Invoices формируются записи с указанием имени и фамилии сотрудника,
оформившего заказ. Кроме того, предоставлена сводная информация по стоимости заказа, расчитанная исходя из цены позиции, объема заказа и учета скидок.



14.2. Что делает представление "CategorySales for 1997"?

Расчет сумм продаж по категориям продуктов на основании представления Product Sales for 1997



14.3. Что делает представление "Sales Total by Amount"?

Список итоговых сумм заказов итогом более 2500 за 1997 год (суммы извлекаются из вспомогательного представления Order Subtotals)



14.4. Что делает представление "Products Above Average Price"?

Список продуктов с ценой за единицу выше среднего.



14.5. Что делает представление "Summary of Sales by Quarter"?

Список заказов с указанием полных сумм заказа, которые были отправлены (суммы извлекаются из вспомогательного представления Order Subtotal)
*/

/*
Рефлексия
В задании 13.3.1. не предоставил форму WHERE, работающую через поле ProductID в таблице Products

UPDATE [OrderDetails]
SET Discount = 0.20
WHERE ProductID IN
  (SELECT ProductID IN Products
   WHERE UnitsInStock > 50)

где мы по сути выполняем вложенный запрос из таблицы Products, получая в итоге записи для тех единиц товара, которых хранится больше 50


Задание 13.3.2.

UPDATE Contacts
SET City = 'Piter', Country = 'Russia'
WHERE City = 'Berlin' AND Country = 'Germany'; --использовал AND, предполагая, что для корректного запроса требуется выполнение обеих условий - город Berlin и страна Germany
(читая в условии задачи: "на Berlin И Germany").
Хотя достаточно было бы и варианта с OR


Задание 13.3.3.

Также как и в задании - написал, что удалял бы по имени поставщика, хотя это неверный подход, не защищающий от дублирования имен.
*/
