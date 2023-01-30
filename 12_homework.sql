--12.3.1. Добавьте нового пользователя в таблицу Employees

INSERT INTO Employees (LastName, FirstName, Title, TitleOfCourtesy, BirthDate, HireDate, Address, City, PostalCode, Country, HomePhone, Extension, Notes)
VALUES ('Babaev', 'Rustam', 'Chief Psychologist', 'Dr.', '1987-10-08 10:35:29', '2010-05-08 12:15:19', 'Sorokina 47, apt 52',
'Surgut', '603252', 'Russia', '+7(564)876-34-11', '3452', 'Simply the great chief');



--12.3.2. Свяжите этого нового пользователя с какой-либо территорией с помощью таблицы EmployeeTerritories (многие-ко-многим).

INSERT INTO EmployeeTerritories (EmployeeID, TerritoryID)
VALUES (23, 99008);



--12.3.3. Попробуйте добавить новую запись в таблицу заказов Orders. Возникнут ли какие-либо конфликты?

INSERT INTO Orders (CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipPostalCode, ShipCountry)
VALUES ('HANAR', 23, '2000-11-08 10:35:29', '2000-12-08 10:35:29', '2000-11-10 10:35:29', 3, 24.05, 'Queen Victoria', 'Bonjorno ave. 24', 'Rome', '00054', 'Italy');

--конфликтов не возникает, но надо учитывать такие FK как CustomerID, EmployeeID, ShipVia


/*
Рефлексия

11.5.1. Отберите с помощью LEFT JOIN все записи из таблицы Customers, для которых FK-ключ таблицы Orders пустой.

неверно произвел связь по FK-ключу таблицы Orders, не указав сравнение полей CustomerID в таблицах Orders и Customers.
Выдача по неверному запросу несколько ввела в заблуждение.

Вместо ON Orders.CustomerID = Customers.CustomerID было указано OrderID IS NULL, что неверно, ибо сравниваться должно было поле CustomerId но из таблицы Orders.


11.5.2. Выведите конкретную информацию по всем пользователям Customers и поставщикам Suppliers -- имя контактной персоны,
 город и страну, а также идентификацию группы (пользователь или поставщик).

В целом запрос верен, но избыточно указывал название таблицы перед каждым полем:
Customers.ContactName, Customers.City, Customers.Country

и в конце запроса эталонный пример отличен сортировкой по таблице: ORDER BY Type
*/
