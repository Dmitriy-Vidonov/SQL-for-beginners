--15.7. Задание
--Создайте в новой базе таблицу Territories со структурой, аналогичной структуре таблицы Territories из учебной базы.
--Добавьте в неё и таблицу Region несколько значений так, чтобы они оказались связаны друг с другом через FK.

CREATE DATABASE NewBase; --создали новую базу

USE NewBase; --сфокусировались на новой БД

CREATE TABLE Region (
	RegionID int NOT NULL,
	RegionDescription nchar(50) NOT NULL); --добавили таблицу Region


CREATE TABLE Territories (
	TerritoryID nvarchar(20) NOT NULL,
	TerritoryDescription nchar(50) NOT NULL,
	RegionID int NOT NULL); --добавили таблицу Territories

INSERT INTO Region (RegionID, RegionDescription)
VALUES (1, 'Eastern'), (2, 'Western'), (3, 'Northern'), (4, 'Southern'); --добавили 4 записи в таблицу Region

INSERT INTO Territories (TerritoryID, TerritoryDescription, RegionID)
VALUES (456345, 'WestBoro', 1), (376439, 'Sebastopol', 2), (349587, 'Balaklava', 4); --добавили 3 записи в таблицу Territories
