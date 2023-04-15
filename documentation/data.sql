-- Active: 1677761336126@@127.0.0.1@3306@RE

--Clients data--(25)

INSERT INTO
    Clients (Name, Phone_no)
VALUES ('John Doe', 1234567890), ('Jane Doe', 2345678901), ('Alice Smith', 3456789012), ('Bob Johnson', 4567890123), ('Emily Davis', 5678901234), ('David Lee', 6789012345), ('Linda Kim', 7890123456), ('Tom Wilson', 8901234567), ('Anna Thompson', 9012345678), ('George Brown', 1234567890), ('Olivia Taylor', 2345678901), ('Henry Lee', 3456789012), ('Sophia Miller', 4567890123), ('Jacob Martinez', 5678901234), ('Abby Johnson', 6789012345), ('William Davis', 7890123456), ('Mia Wilson', 8901234567), ('Michael Garcia', 9012345678), (
        'Natalie Anderson',
        1234567890
    ), ('Connor Thompson', 2345678901), ('Ella Scott', 3456789012), (
        'Nicholas Rodriguez',
        4567890123
    ), ('Madison Thomas', 5678901234), ('Andrew Martinez', 6789012345), ('Ava Hernandez', 7890123456);

--Properties data--(24)

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
        '2019-11-11',
        800000
    ), (
        '321 Maple St',
        'Downtown',
        800,
        400000,
        TRUE,
        '2015-01-01',
        1,
        'Sold',
        '2020-11-11',
        380000
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
    ), (
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

--sellers data--(24)

INSERT INTO
    Sellers (Name, Phone_no)
VALUES ('Tom Johnson', 6789012345), ('Samantha Lee', 7890123456), ('James Smith', 8901234567), ('Emma Wilson', 9012345678), ('Mike Brown', 1234567890), ('John Doe', 2345678901), ('Jane Smith', 3456789012), ('Mark Davis', 4567890123), ('Emily Jones', 5678901234), ('David Martin', 6789012345), ('Karen Taylor', 7890123456), ('Steven Davis', 8901234567), ('Lisa Jackson', 9012345678), ('Robert White', 1234567890), ('Sarah Brown', 2345678901), ('Michael Johnson', 3456789012), ('Amanda Lee', 4567890123), ('Peter Smith', 5678901234), ('Michelle Wilson', 6789012345), ('Kevin Brown', 7890123456), ('Julia Martin', 8901234567), ('Erica Taylor', 9012345678), ('Brian Davis', 1234567890), ('Rachel Jackson', 2345678901), ('Daniel White', 3456789012), ('Kimberly Brown', 4567890123), ('Thomas Johnson', 5678901234), ('Olivia Lee', 6789012345), ('George Smith', 7890123456);

--brokers data--(6)

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
    ), (
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
    );

--sells--

INSERT INTO
    Sells (Seller_ID, P_ID)
VALUES (1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 10), (11, 11), (12, 12), (13, 13), (14, 14), (15, 15), (16, 16), (17, 17), (18, 18), (19, 19), (20, 20), (21, 21), (22, 22), (23, 23), (24, 24), (25, 25), (26, 26), (27, 27), (28, 28), (29, 29);

INSERT INTO `Holds`
VALUES (5, 14), (6, 23), (7, 26), (8, 29), (1, 3), (2, 4);

SELECT * FROM `Properties`;

SET foreign_key_checks = 1;

TRUNCATE TABLE Brokers;


UPDATE `Sellers` SET Password = "cccccccc";

SELECT * FROM `Clients`;