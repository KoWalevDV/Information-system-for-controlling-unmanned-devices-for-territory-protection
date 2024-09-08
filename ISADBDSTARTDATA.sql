-- Заполнение таблицы пользователей
INSERT INTO Users (Username, Password) VALUES
('DaniilK', '31072003'),
('Genadiy', '14556666'),
('VladimirK', '08081973'),
('ArseniyR', '25102003');

-- Заполнение таблицы беспилотных устройств
INSERT INTO Drones (Name, Type, UserID) VALUES
--('Drone1', 'FPV1', 1),
--('Drone2', 'FPV2', 2),
('Drone3', 'FPV3', 3),
('Drone4', 'FPV4', 4);

-- Заполнение таблицы секторов патрулирования
INSERT INTO PatrolSectors (Name, Description) VALUES
('Sector1', 'Upper straight'),
('Sector2', 'Lower straight'),
('Sector3', 'The right straight line'),
('Sector4', 'The center of the object');

-- Заполнение таблицы сенсоров
INSERT INTO Sensors (Type, Description) VALUES
('Camera', 'Simple Camera'),
('Thermal', 'Thermal Vision Camera'),
('NVC', 'Night Vision Camera'),
('Radar', 'Description for Radar');

-- Заполнение таблицы событий
INSERT INTO Events (EventType, EventDescription) VALUES
('On a charge', 'It is located at the charging station'),
('Start', 'Getting started with the drone'),
('Finish', 'The end of the drons operation'),
('Anomaly', 'Abnormal activity has been observed'),
('Threat', 'Attention intruder, danger at the facility');

--On a charge   It is located at the charging station