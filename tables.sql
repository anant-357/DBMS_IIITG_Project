-- Active: 1677761336126@@127.0.0.1@3306@dbms_lab

--ENTITY SETS

CREATE TABLE
    Clients(
        Client_ID INTEGER AUTO_INCREMENT,
        Name VARCHAR(255),
        Phone_no NUMERIC(10, 0),
        PRIMARY KEY (Client_ID)
    );

CREATE TABLE
    Properties(
        P_ID INTEGER AUTO_INCREMENT,
        Address VARCHAR(255),
        Locality VARCHAR(255),
        Area INTEGER,
        Price INTEGER,
        Rent BOOLEAN,
        Date_Of_Construction DATE,
        No_Of_Bedrooms SMALLINT,
        Status VARCHAR(255),
        Sell_Date DATE,
        Sell_Price INTEGER,
        PRIMARY KEY (P_ID)
    );

CREATE TABLE
    Sellers(
        Seller_ID INTEGER AUTO_INCREMENT,
        Name VARCHAR(255),
        Phone_no NUMERIC(10, 0),
        PRIMARY KEY (Seller_ID)
    );

CREATE TABLE
    Brokers(
        License_ID INTEGER AUTO_INCREMENT,
        Name VARCHAR(255),
        Phone_no NUMERIC(10, 0),
        Brokerage INTEGER,
        Locality VARCHAR(255),
        PRIMARY KEY (License_ID)
    );

--RELATIONSHIP SETS

CREATE TABLE
    Holds(
        Client_ID INTEGER,
        P_ID INTEGER,
        FOREIGN KEY (Client_ID) REFERENCES Clients(Client_ID),
        FOREIGN KEY (P_ID) REFERENCES Properties(P_ID),
        PRIMARY KEY (Client_ID, P_ID)
    );

CREATE TABLE
    Sells(
        Seller_ID INTEGER,
        P_ID INTEGER,
        FOREIGN KEY (Seller_ID) REFERENCES Sellers(Seller_ID),
        FOREIGN KEY (P_ID) REFERENCES Properties(P_ID),
        PRIMARY KEY (P_ID)
    );

DROP TABLE Sells;

CREATE TABLE
    Shows(
        License_ID INTEGER,
        P_ID INTEGER,
        FOREIGN KEY (License_ID) REFERENCES Brokers(License_ID),
        FOREIGN KEY (P_ID) REFERENCES Properties(P_ID),
        PRIMARY KEY (License_ID, P_ID)
    );

CREATE TABLE
    Photos(
        P_ID INTEGER,
        Photo_URL VARCHAR(255),
        FOREIGN KEY (P_ID) REFERENCES Properties(P_ID),
        PRIMARY KEY (P_ID, Photo_URL)
    );

-- Clients table

INSERT INTO
    Clients (Name, Phone_no)
VALUES ('John Doe', 1234567890), ('Jane Doe', 2345678901), ('Alice Smith', 3456789012), ('Bob Johnson', 4567890123), ('Emily Davis', 5678901234);

-- Properties table

INSERT INTO
    Properties (
        Address,
        Locality,
        Area,
        Price,
        Rent,
        Date_Of_Construction,
        No_Of_Bedrooms,
        Status,
        Sell_Date,
        Sell_Price
    )
VALUES (
        '123 Main St',
        'West Boulevard',
        1000,
        500000,
        FALSE,
        '2020-01-01',
        2,
        'Available',
        NULL,
        NULL
    ), (
        '456 Oak Ave',
        'Suburbia',
        1500,
        750000,
        FALSE,
        '2010-01-01',
        3,
        'Available',
        NULL,
        NULL
    ), (
        '789 Elm St',
        'Rural',
        2000,
        1000000,
        FALSE,
        '2005-01-01',
        4,
        'Sold',
        NULL,
        NULL
    ), (
        '321 Maple St',
        'Downtown',
        800,
        400000,
        TRUE,
        '2015-01-01',
        1,
        'Sold',
        NULL,
        NULL
    ), (
        '654 Pine Ave',
        'Borjhar',
        1200,
        600000,
        TRUE,
        '2012-01-01',
        2,
        'Available',
        NULL,
        NULL
    ),(
        '135 High St',
        'Midtown',
        900,
        450000,
        TRUE,
        '2018-01-01',
        1,
        'Available',
        NULL,
        NULL
    ), (
        '246 Oak St',
        'Grapeseed',
        2000,
        900000,
        FALSE,
        '2014-01-01',
        4,
        'Available',
        NULL,
        NULL
    ), (
        '357 Broad St',
        'Alamo Sea',
        1200,
        650000,
        TRUE,
        '2017-01-01',
        2,
        'Available',
        NULL,
        NULL
    ), (
        '468 Walnut Ave',
        'Rockford Hills',
        3000,
        1500000,
        FALSE,
        '2010-01-01',
        5,
        'Available',
        NULL,
        NULL
    ), (
        '579 Cherry St',
        'Blaine County',
        800,
        400000,
        TRUE,
        '2019-01-01',
        2,
        'Available',
        NULL,
        NULL
    ), (
        '680 Oak St',
        'Vinewood',
        1100,
        550000,
        FALSE,
        '2015-01-01',
        3,
        'Available',
        NULL,
        NULL
    ), (
        '791 Main St',
        'Midtown',
        1000,
        500000,
        TRUE,
        '2016-01-01',
        2,
        'Available',
        NULL,
        NULL
    ), (
        '802 Maple Ave',
        'Grapeseed',
        1800,
        850000,
        FALSE,
        '2012-01-01',
        4,
        'Available',
        NULL,
        NULL
    ), (
        '913 Elm St',
        'Alamo Sea',
        1300,
        700000,
        TRUE,
        '2014-01-01',
        3,
        'Sold',
        '2022-03-15',
        800000
    ), (
        '124 Pine Ave',
        'Rockford Hills',
        2500,
        1200000,
        FALSE,
        '2009-01-01',
        5,
        'Available',
        NULL,
        NULL
    ), (
        '235 High St',
        'Blaine County',
        700,
        350000,
        TRUE,
        '2020-01-01',
        1,
        'Available',
        NULL,
        NULL
    ), (
        '346 Oak St',
        'Borjhar',
        1000,
        500000,
        FALSE,
        '2016-01-01',
        2,
        'Available',
        NULL,
        NULL
    ), (
        '457 Broad St',
        'Midtown',
        1200,
        650000,
        TRUE,
        '2019-01-01',
        2,
        'Available',
        NULL,
        NULL
    ), (
        '568 Walnut Ave',
        'Suburbia',
        2200,
        1100000,
        FALSE,
        '2010-01-01',
        4,
        'Available',
        NULL,
        NULL
    ), (
        '679 Cherry St',
        'Downtown',
        900,
        450000,
        TRUE,
        '2017-01-01',
        1,
        'Available',
        NULL,
        NULL
    ), (
        '780 Main St',
        'Rural',
        1800,
        900000,
        FALSE,
        '2013-01-01',
        3,
        'Available',
        NULL,
        NULL
    ), (
        '891 Maple Ave',
        'West Boulevard',
        1100,
        550000,
        TRUE,
        '2015-01-01',
        2,
        'Available',
        NULL,
        NULL
    ), (
        '902 Elm St',
        'Vinewood',
        1400,
        700000,
        FALSE,
        '2012-01-01',
        3,
        'Sold',
        '2021-12-01',
        750000
    ), (
        '113 Pine Ave',
        'Midtown',
        850,
        425000,
        TRUE,
        '2018-01-01',
        1,
        'Available',
        NULL,
        NULL
    ), (
        '224 High St',
        'Suburbia',
        1600,
        800000,
        FALSE,
        '2011-01-01',
        4,
        'Available',
        NULL,
        NULL
    ), (
        '335 Oak St',
        'Downtown',
        1100,
        550000,
        TRUE,
        '2016-01-01',
        2,
        'Sold',
        '2022-02-01',
        650000
    ), (
        '446 Broad St',
        'Rural',
        2800,
        1300000,
        FALSE,
        '2008-01-01',
        5,
        'Available',
        NULL,
        NULL
    ), (
        '557 Walnut Ave',
        'West Boulevard',
        650,
        325000,
        TRUE,
        '2019-01-01',
        1,
        'Available',
        NULL,
        NULL
    ), (
        '668 Cherry St',
        'Borjhar',
        1000,
        500000,
        FALSE,
        '2014-01-01',
        2,
        'Sold',
        '2021-11-01',
        550000
    );

-- Sellers table

INSERT INTO
    Sellers (Name, Phone_no)
VALUES ('Tom Johnson', 6789012345), ('Samantha Lee', 7890123456), ('James Smith', 8901234567), ('Emma Wilson', 9012345678), ('Mike Brown', 1234567890);

-- Brokers table

INSERT INTO
    Brokers (
        Name,
        Phone_no,
        Brokerage,
        Locality
    )
VALUES (
        'Bill Johnson',
        2345678901,
        1,
        'Downtown'
    ), (
        'Linda Davis',
        3456789012,
        2,
        'Borjhar'
    ), (
        'Alex Lee',
        4567890123,
        3,
        'Rural'
    ), (
        'Grace Wilson',
        5678901234,
        4,
        'West Boulevard'
    ), (
        'Jake Brown',
        6789012345,
        5,
        'Suburbia'
    )(
        'Emily Nguyen',
        7890123456,
        6,
        'Midtown'
    ), (
        'John Smith',
        8901234567,
        7,
        'Blaine County'
    ), (
        'Ava Williams',
        9012345678,
        8,
        'Grapeseed'
    ), (
        'Michael Brown',
        1234567890,
        9,
        'Rockford Hills'
    ), (
        'Olivia Davis',
        2345678901,
        10,
        'ALamo Sea'
    ), (
        'Ethan Wilson',
        3456789012,
        11,
        'Vinewood'
    ) -- Holds table
INSERT INTO
    Holds (Client_ID, P_ID)
VALUES (1, 3), (2, 4);

-- Sells table

INSERT INTO
    Sells (Seller_ID, P_ID)
VALUES (1, 1), (2, 2), (3, 3), (4, 4), (5, 5);

DELIMITER //

CREATE TRIGGER ADD_SHOW AFTER INSERT ON PROPERTIES 
FOR EACH ROW BEGIN 
	INSERT INTO
	    Shows (License_ID, P_ID)
	SELECT License_ID, NEW.P_ID
	FROM Brokers
	WHERE Locality = NEW.Locality;
	END // 


DELIMITER ;

SHOW TRIGGERS;

SELECT * FROM `Shows`;

TRUNCATE TABLE Shows;

SET foreign_key_checks = 1;

TRUNCATE TABLE Shows;