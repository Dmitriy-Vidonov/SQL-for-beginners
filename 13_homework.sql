--13.3.1. Увеличьте скидку (Discount) в таблице Order Details до 20% (0.20) для тех единиц товара, которых на складе хранится больше 50 (поле Quantity).
--Напишите запрос, но не выполняйте, чтобы не вносить изменения в таблицу.

UPDATE [Order Details] 
SET Discount = 0.20
WHERE Quantity > 50;



--13.3.2. В таблице Contacts измените все контактные данные, ранее приходившиеся на Berlin (поле City) и Germany (поле Country), соответственно на Piter и Russia. 
--Напишите запрос, но не выполняйте, чтобы не вносить изменения в таблицу.

UPDATE Contacts
SET City = 'Piter', Country = 'Russia'
WHERE City = 'Berlin' AND Country = 'Germany';



--13.3.3. Добавьте и затем удалите несколько записей в таблице Shippers. По какому критерию вы удаляли свежие записи?

INSERT INTO Shippers (CompanyName, Phone)
VALUES ('Solomon Co', '8(495)678-30-20'), ('Andromeda', '+7(786)789-33-23'), ('PepsiKo', '+380489-48-49');

DELETE FROM Shippers
WHERE CompanyName = 'Andromeda' OR CompanyName = 'PepsiKo';

--Удаление происходило по названию поставщика
