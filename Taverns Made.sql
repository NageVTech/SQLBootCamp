USE DrunkSQL;
DROP TABLE IF EXISTS Taverns;
DROP TABLE IF EXISTS Locations;
DROP TABLE IF EXISTS UserRoles;
DROP TABLE IF EXISTS Users;
DROP TABLE IF EXISTS Supplies;
CREATE TABLE Taverns (
ID INT IDENTITY,
TavernName VARCHAR(100)
);

INSERT INTO Taverns (TavernName) VALUES
('Borked Orc'),
('Mangy Maige'),
('Drunken Druid'),
('Dirty Dwarf'),
('Dragonborn Brewery');


CREATE TABLE Locations (
ID INT IDENTITY,
LocationName VARCHAR(100),
);

INSERT INTO Locations (LocationName, TavernID, Floors) VALUES
('Brookwood', 1, 1),
('Prospect Point', 2, 2),
('Windsor Cresent', 2, 2),
('Pence Brook', 3, 1),
('Jackson', 4, 4);

CREATE TABLE UserRoles (
ID INT IDENTITY,
RoleName VARCHAR(100),
RoleDescription VARCHAR(255)
);
INSERT INTO UserRoles (RoleName, RoleDescription) VALUES
('Owner','Collector of souls.'),
('Bartender','Makes the pain go away with magic tinctures.'),
('Bouncer','Bounces your head on the floor, on the way out the door.');

CREATE TABLE Users (
ID INT IDENTITY,
UserName VARCHAR(50),
RoleID INT,
TavernID INT,
Password VARCHAR(255)
);


INSERT INTO Users (UserName, RoleID, TavernID) VALUES
('Kyle',1,1),
('Donovan',1,2),
('Chris',1,3),
('Pete',1,4),
('Colin',1,5),
('Ron',2,1),
('Jim',2,2),
('Sean',2,3),
('Tyler',2,4),
('Justin',2,5),
('Cody',3,1),
('Suraj',3,2),
('George',3,3),
('Nick',3,4),
('Anthony',3,5);