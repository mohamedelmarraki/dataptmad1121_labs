CREATE TABLE Cars
(
    ID INT NOT NULL
    , VIN VARCHAR(50) NOT NULL
    , Manufacturer VARCHAR(50) NOT NULL
    , Model VARCHAR(50) NOT NULL
    , "Year" INT NOT NULL
    , Color VARCHAR(50) NOT NULL
);
INSERT INTO Cars (ID, VIN, Manufacturer, Model, "Year", Color)
VALUES (0, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue')
, (1, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red')
, (2, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion',    2018, 'White')
, (3, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4',    2018, 'Silver')
, (4, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60',  2019, 'Gray')
, (5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');
marca_de_verificación_blanca
ojos
manos_levantadas





CREATE TABLE Customers
(
    ID INT NOT NULL
    , "Customer ID" INT NOT NULL
    , Name VARCHAR(50) NOT NULL
    , Phone VARCHAR(50) NOT NULL
    , Email VARCHAR(50) NOT NULL
    , Address VARCHAR(50) NOT NULL
    , City VARCHAR(50) NOT NULL
    , "State/Province" VARCHAR(50) NOT NULL
    , Country VARCHAR(50) NOT NULL 
    , Postal INT NOT NULL
);
INSERT INTO Customers (ID, "Customer ID", Name, Phone, Email, Address, City, "State/Province", Country, Postal)
VALUES (0, 10001, 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045')
,(1, 20001, 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130')
,(2, 30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');
16:15
CREATE TABLE SalesPersons
(
    ID INT NOT NULL
    , "Staff ID" INT NOT NULL
    , Name VARCHAR(50) NOT NULL
    , Store VARCHAR(50) NOT NULL
);
INSERT INTO SalesPersons (ID, "Staff ID", Name, Store)
VALUES (0, '00001', 'Petey Cruiser', 'Madrid')
,(1, '00002', 'Anna Sthesia', 'Barcelona')
,(2, '00003', 'Paul Molive','Berlin')
,(3, '00004', 'Gail Forcewind', 'Paris')
,(4, '00005', 'Paige Turner', 'Mimia')
,(5, '00006', 'Bob Frapples','Mexico City')
,(6, '00007', 'Walter Melon', 'Amsterdam')
,(7, '00008', 'Shonda Leer', 'São Paulo');
16:15
CREATE TABLE Invoices
(
    ID INT NOT NULL
    , "Invoice Number" VARCHAR(50) NOT NULL
    , "Date" DATE NOT NULL
    , Car INT NOT NULL
    , Customer INT NOT NULL
    , "Sales Person" INT NOT NULL
);
INSERT INTO Invoices (ID, "Invoice Number", "Date", Car, Customer, "Sales Person")
VALUES (0, '852399038', '20180822', 0, 1, 3)
,(1, '731166526', '20181231', 3, 0, 5)
,(2, '271135104', '20190122', 2, 2, 7)
,(3, '276735104', '20190122', 7, 2, 7)
select* from cars
select* from Customers
select* from SalesPersons
select* from Invoices
SELECT *
FROM Cars INNER JOIN Invoices
ON Cars.ID = Invoices.Car
SELECT *
FROM Cars FULL JOIN Invoices
ON Cars.ID = Invoices.Car
SELECT *
FROM Cars LEFT JOIN Invoices
ON Cars.ID = Invoices.Car
SELECT *
FROM Cars RIGHT JOIN Invoices
ON Cars.ID = Invoices.Car
SELECT *
FROM Cars  LEFT JOIN Invoices
ON Cars.ID = Invoices.Car
WHERE Invoices.Car IS NULL
SELECT *
FROM Cars  RIGHT JOIN Invoices
ON Cars.ID = Invoices.Car
WHERE CARS.ID IS NULL
SELECT *
FROM Cars  FULL JOIN Invoices
ON Cars.ID = Invoices.Car
WHERE Invoices.Car IS NULL OR
Invoices.Car IS NULL