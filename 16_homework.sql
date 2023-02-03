--Добавьте подходящие индексы для таблиц тестовой базы, созданной в предыдущем занятии.

USE NewBase;
CREATE INDEX indexPrimary ON Region (RegionID);

CREATE INDEX primIdxTerritoryID ON Territories (TerritoryID);
