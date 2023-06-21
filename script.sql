INSERT INTO dealerships(dealershipId, name, address, phone)
VALUES(1, 'D & B Used Cars', '111 Old Benbrook Rd', 817-555-5555);



INSERT INTO dealerships(dealershipId, name, address, phone)
VALUES(2, 'Dj Dealership', 'central ave 1234', 417-525-5355);

INSERT INTO dealerships(dealershipId, name, address, phone)
VALUES(365, 'cooling Dealership', 'allen Rd 344', 987-525-8354);






INSERT INTO vehicles(vinNum, year, make, model, vehicleType, color, odometer, price, sold)
VALUES
(87543, 2014, 'Dodge', 'Charger', 'Sedan', 'Gray', 89674, 12000.0, false),
(62134, 2008, 'Toyota', 'Camry', 'Sedan', 'Silver', 98000, 9000.0, true),
(75321, 2019, 'Ford', 'F-150', 'Truck', 'Black', 45000, 28000.0, false),
(93217, 2015, 'Chevrolet', 'Impala', 'Sedan', 'White', 62000, 15000.0, true),
(51239, 2017, 'Honda', 'Accord', 'Sedan', 'Blue', 38000, 17000.0, false),
(62547, 2013, 'Nissan', 'Maxima', 'Sedan', 'Red', 75000, 11000.0, true),
(43219, 2020, 'Volkswagen', 'Golf', 'Hatchback', 'Gray', 24000, 20000.0, false),
(82751, 2016, 'BMW', 'X5', 'SUV', 'Silver', 52000, 35000.0, true),
(31948, 2012, 'Mercedes-Benz', 'C-Class', 'Sedan', 'Black', 68000, 18000.0, false),
(73852, 2018, 'Audi', 'Q5', 'SUV', 'White', 32000, 32000.0, true),
(92347, 2014, 'Toyota', 'Rav4', 'SUV', 'Silver', 54000, 14000.0, false),
(51423, 2011, 'Honda', 'CR-V', 'SUV', 'Blue', 76000, 11000.0, true),
(82735, 2019, 'Ford', 'Escape', 'SUV', 'Red', 39000, 22000.0, false),
(61938, 2015, 'Chevrolet', 'Silverado', 'Truck', 'Black', 67000, 19000.0, true),
(42319, 2017, 'Nissan', 'Sentra', 'Sedan', 'Gray', 35000, 13000.0, false),
(82175, 2013, 'Volkswagen', 'Passat', 'Sedan', 'White', 61000, 10000.0, true),
(31984, 2020, 'BMW', '7 Series', 'Sedan', 'Silver', 23000, 55000.0, false),
(73251, 2016, 'Mercedes-Benz', 'S-Class', 'Sedan', 'Black', 48000, 40000.0, true),
(41639, 2012, 'Audi', 'A6', 'Sedan', 'Blue', 72000, 17000.0, false),
(82653, 2018, 'Toyota', 'Highlander', 'SUV', 'Red', 31000, 28000.0, true),



INSERT INTO inventory(dealershipId, vinNum)
VALUES(1, 10112);

INSERT INTO salesContracts(dealershipId, vinNum)
VALUES(1, 10112);

INSERT INTO leaseContracts(dealershipId, vinNum)
VALUES(1, 10112);




INSERT INTO vehicles(vinNum, sold)
VALUES(37846, false),
VALUES(34556, false),
VALUES(87543, true),
VALUES(25789, false);







INSERT INTO leaseContracts(dealershipId, vinNum, price, sold)
VALUES(1,10112, 995, true),
(2,31948, 18000, false),
(1,31984, 55000, false),
(1,34556, 20203, true),
(365, 37846, 1995, true),
(1,41639, 17000, false),
(365,42319, 13000, false),
(1,42639, 25000, false),
(365,43219, 20000, false),
(1,51239, 17000, false),
(365,51329, 27000, false),
(365,51423, 11000, true),
(365,61938, 19000, true),
(365,62134, 9000, true),
(1,62547, 11000, true),
(1,62943, 15000, false),
(365,73251, 40000, true),
(365,73852, 32000, true),
(2,75321, 28000, false),
(2,75329, 11000, true),
(1,81957, 23000, true),
(2,82175, 10000, true),
(1,82653, 28000, false),
(2,82735, 22000, false),
(2,82751, 35000, true),
(365,87543, 12000, false),
(2, 92347, 14000, false),
(2,93217, 15000, true),
(365,93742, 13000, true),
(365,1234567, 80000, false);












INSERT INTO salesContracts(dealershipId, vinNum)
VALUES(1, 37846),
VALUES(1, 34556),
VALUES(1, 87543),
VALUES(1, 25789);




INSERT INTO leaseContracts(dealershipId, vinNum)
VALUES(1, 37846),
VALUES(1, 34556),
VALUES(1, 87543),
VALUES(1, 25789);







CREATE TABLE dealerships (
    dealershipId int,
    name varchar(50),
    address varchar(50),
    phone varchar(12),
    PRIMARY KEY (dealershipId)
);

CREATE TABLE vehicles (
    vinNum int,
    year int,
    make varchar(50),
    model varchar(50),
    vehicleType varchar(50),
    color varchar(50),
    odometer int,
    price double,
    sold boolean,
    PRIMARY KEY (vinNum)
);

CREATE TABLE inventory (
    dealershipId int,
    vinNum int,
    price double,
    sold boolean,
    FOREIGN KEY (dealershipId) REFERENCES dealerships (dealershipId),
    FOREIGN KEY (vinNum) REFERENCES vehicles (vinNum)
);



CREATE TABLE salesContracts (
    dealershipId int,
    vinNum int,
    price double,
    sold boolean,
    FOREIGN KEY (dealershipId) REFERENCES dealerships (dealershipId),
    FOREIGN KEY (vinNum) REFERENCES vehicles (vinNum),
    PRIMARY KEY (dealershipId)
);

CREATE TABLE leaseContracts (
    dealershipId int PRIMARY KEY,
    vinNum int,
    price double,
    sold boolean,
    FOREIGN KEY (dealershipId) REFERENCES dealerships (dealershipId),
    FOREIGN KEY (vinNum) REFERENCES vehicles (vinNum)
);
