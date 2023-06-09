CREATE TABLE dealerships(
    dealershipId int ,
    name varchar (50),
    address varchar(50),
    phone varchar(12),
    PRIMARY KEY(dealershipId)
);

CREATE TABLE vehicles(
    vinNum int,
    sold boolean,
    PRIMARY KEY (vinNum)
);

CREATE TABLE inventory(
    dealershipId int,
    vinNum int
);

CREATE TABLE salesContracts(
    dealershipId int Primary key,
    vinNum int,
    FOREIGN KEY (vinNum) REFERENCES vehicles (vinNum)
);

CREATE TABLE leaseContracts(
    dealershipId int, int Primary key,
    vinNum int,
    FOREIGN KEY(vinNum) REFERENCES vehicles (vinNum)
);
