-- Создание таблицы пользователей
CREATE TABLE IF NOT EXISTS Users (
    ID SERIAL PRIMARY KEY,
    Username VARCHAR(255) NOT NULL UNIQUE,
    Password VARCHAR(255) NOT NULL
);

-- Создание таблицы беспилотных устройств
CREATE TABLE IF NOT EXISTS Drones (
    ID SERIAL PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Type VARCHAR(255) NOT NULL,
    UserID INTEGER REFERENCES Users(ID)
);

-- Создание таблицы секторов патрулирования
CREATE TABLE IF NOT EXISTS PatrolSectors (
    ID SERIAL PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Description TEXT
);

-- Создание таблицы связи между дронами и секторами патрулирования
CREATE TABLE IF NOT EXISTS DronePatrols (
    DroneID INTEGER REFERENCES Drones(ID),
    SectorID INTEGER REFERENCES PatrolSectors(ID),
    PRIMARY KEY (DroneID, SectorID)
);

-- Создание таблицы сенсоров
CREATE TABLE IF NOT EXISTS Sensors (
    ID SERIAL PRIMARY KEY,
    Type VARCHAR(255) NOT NULL,
    Description TEXT
);

-- Создание таблицы связи между дронами и сенсорами
CREATE TABLE IF NOT EXISTS DroneSensors (
    DroneID INTEGER REFERENCES Drones(ID),
    SensorID INTEGER REFERENCES Sensors(ID),
    PRIMARY KEY (DroneID, SensorID)
);

-- Создание таблицы событий
CREATE TABLE IF NOT EXISTS Events (
    ID SERIAL PRIMARY KEY,
    EventType VARCHAR(255) NOT NULL,
    EventDescription TEXT
);

-- Создание таблицы связи между событиями и дронами
CREATE TABLE IF NOT EXISTS DroneEvent (
    EventID INTEGER REFERENCES Events(ID),
    DroneID INTEGER REFERENCES Drones(ID),
    PRIMARY KEY (EventID, DroneID)
);

-- Изменение таблицы DroneEvent для добавления колонок даты и времени влета и посадки
ALTER TABLE DroneEvent
ADD COLUMN TimeEvent TIMESTAMP;

ALTER TABLE Dronepatrols
ADD COLUMN TakeoffTimestamp TIMESTAMP,
ADD COLUMN LandingTimestamp TIMESTAMP;

-- Изменение таблицы Users для добавления колонки "роль"
ALTER TABLE Users
ADD COLUMN Role VARCHAR(50);

